#include "../include/bp.hpp"

// ------------------------
// Wide burst load/store
// ------------------------

static constexpr int WORDS_MAX   = (MAX_N + VEC - 1) / VEC;     // vec words for a vector
static constexpr int N0_MAX      = MAX_N / 2;
static constexpr int N1_MAX      = MAX_N - N0_MAX;
static constexpr int MAT0_WORDS_MAX = N0_MAX * WORDS_MAX;       // vec words for P0
static constexpr int MAT1_WORDS_MAX = N1_MAX * WORDS_MAX;       // vec words for P1

static void load_vec(data_t* dst, const vec_t* src_v, int n) {
#pragma HLS INLINE off
    const int words = (n + VEC - 1) / VEC;

LoadWords:
    for (int w = 0; w < words; ++w) {
#pragma HLS PIPELINE II=1
        vec_t v = src_v[w];

LoadLanes:
        for (int j = 0; j < VEC; ++j) {
#pragma HLS UNROLL factor=16
            int idx = w * VEC + j;
            if (idx < n) dst[idx] = v[j];
        }
    }
}

static void store_vec(vec_t* dst_v, const data_t* src, int n) {
#pragma HLS INLINE off
    const int words = (n + VEC - 1) / VEC;

StoreWords:
    for (int w = 0; w < words; ++w) {
#pragma HLS PIPELINE II=1
        vec_t v;

StoreLanes:
        for (int j = 0; j < VEC; ++j) {
#pragma HLS UNROLL factor=16
            int idx = w * VEC + j;
            v[j] = (idx < n) ? src[idx] : 0.0f;
        }
        dst_v[w] = v;
    }
}

// ------------------------
// Core compute for a row block
// mat_phalf_v points to (row_count x N) laid out row-major in vec words
// ------------------------
template<int ID>
static void admm_rows(
    const vec_t* mat_phalf_v,
    const data_t* q_loc,
    data_t* x_loc,
    data_t* z_loc,
    data_t* u_loc,
    data_t* zold_loc,
    data_t rho,
    data_t alpha,
    int N,
    int row_base,
    int row_count
) {
#pragma HLS INLINE off

    // Tile-local buffers (partition for throughput)
    data_t x_tile[TILE_M];
    data_t z_tile[TILE_M];
    data_t u_tile[TILE_M];
    data_t zold_tile[TILE_M];
    data_t q_tile[TILE_M];

#pragma HLS ARRAY_PARTITION variable=x_tile    cyclic factor=VEC
#pragma HLS ARRAY_PARTITION variable=z_tile    cyclic factor=VEC
#pragma HLS ARRAY_PARTITION variable=u_tile    cyclic factor=VEC
#pragma HLS ARRAY_PARTITION variable=zold_tile cyclic factor=VEC
#pragma HLS ARRAY_PARTITION variable=q_tile    cyclic factor=VEC

    const int vecN = (N + VEC - 1) / VEC;

MLoop:
    for (int row_off = row_base; row_off < row_base + row_count; row_off += TILE_M) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=16384
        const int rows_left = (row_base + row_count) - row_off;
        const int M = (rows_left >= TILE_M) ? TILE_M : rows_left;

        // Load state for this tile of rows
InitTile:
        for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
            const int r = row_off + i;
            z_tile[i]    = z_loc[r];
            u_tile[i]    = u_loc[r];
            zold_tile[i] = z_tile[i];
            q_tile[i]    = q_loc[r];
            x_tile[i]    = 0.0f;
        }

        // Compute x = P*(z-u) for these rows, streaming P from HBM, (z-u) from on-chip
FullTiles:
        for (int t = 0; t < vecN; ++t) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=4096

            // Build current (z-u) vector word from on-chip state.
            // Important: this sees updates from previous row blocks (same behavior as your old code).
            vec_t zu;

            for (int j = 0; j < VEC; ++j) {
            #pragma HLS UNROLL factor=16
                int col = t * VEC + j;
                zu[j] = (col < N) ? (z_loc[col] - u_loc[col]) : 0.0f;
            }

            // For each row in the tile, stream one 512-bit P word and do 16 MACs
RowWord:
            for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
                const int local_r = (row_off - row_base) + i;
                const int word_idx = local_r * vecN + t;

                vec_t p = mat_phalf_v[word_idx];

                data_t acc = x_tile[i];

                for (int j = 0; j < VEC; ++j) {
                #pragma HLS UNROLL factor=16
                    acc += p[j] * zu[j];
                }

                x_tile[i] = acc;
            }
        }

        // Add q
AddQ:
        for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
            x_tile[i] += q_tile[i];
        }

        // Shrinkage + write back to on-chip state
Update:
        for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
            const int r = row_off + i;

            data_t xhat = alpha * x_tile[i] + (1.0f - alpha) * zold_tile[i];
            data_t znew = shrinkage(xhat + u_tile[i], 1.0f / rho);
            data_t unew = u_tile[i] + (xhat - znew);

            zold_loc[r] = zold_tile[i];
            z_loc[r]    = znew;
            u_loc[r]    = unew;
            x_loc[r]    = x_tile[i];
        }
    }
}

// ------------------------
// Termination norms (all on-chip; no off-chip reads)
// ------------------------
static void compute_norms(
    const data_t* x_loc,
    const data_t* z_loc,
    const data_t* zold_loc,
    const data_t* u_loc,
    data_t rho,
    int N,
    data_t &r_norm,
    data_t &s_norm,
    data_t &x_norm,
    data_t &z_norm,
    data_t &u_norm
) {
#pragma HLS INLINE off

    static constexpr int UF = 16; // matches VEC; good throughput
    data_t r_acc[UF], s_acc[UF], x_acc[UF], z_acc[UF], u_acc[UF];
#pragma HLS ARRAY_PARTITION variable=r_acc complete
#pragma HLS ARRAY_PARTITION variable=s_acc complete
#pragma HLS ARRAY_PARTITION variable=x_acc complete
#pragma HLS ARRAY_PARTITION variable=z_acc complete
#pragma HLS ARRAY_PARTITION variable=u_acc complete

InitAcc:
    for (int j = 0; j < UF; ++j) {
#pragma HLS UNROLL
        r_acc[j]=0; s_acc[j]=0; x_acc[j]=0; z_acc[j]=0; u_acc[j]=0;
    }

Main:
    for (int i = 0; i < N; i += UF) {
#pragma HLS PIPELINE II=1
Lane:
        for (int j = 0; j < UF; ++j) {
#pragma HLS UNROLL
            int idx = i + j;
            if (idx < N) {
                data_t xi    = x_loc[idx];
                data_t zi    = z_loc[idx];
                data_t zoldi = zold_loc[idx];
                data_t ui    = u_loc[idx];

                data_t r = xi - zi;
                data_t s = -rho * (zi - zoldi);

                r_acc[j] += r * r;
                s_acc[j] += s * s;
                x_acc[j] += xi * xi;
                z_acc[j] += zi * zi;
                u_acc[j] += ui * ui;
            }
        }
    }

    r_norm = s_norm = x_norm = z_norm = u_norm = 0.0f;
Reduce:
    for (int j = 0; j < UF; ++j) {
#pragma HLS UNROLL
        r_norm += r_acc[j];
        s_norm += s_acc[j];
        x_norm += x_acc[j];
        z_norm += z_acc[j];
        u_norm += u_acc[j];
    }

    r_norm = std::sqrt(r_norm);
    s_norm = std::sqrt(s_norm);
    x_norm = std::sqrt(x_norm);
    z_norm = std::sqrt(z_norm);
    u_norm = std::sqrt((rho * rho) * u_norm);
}

// ------------------------
// Top kernel (wide interfaces + on-chip state across iterations)
// ------------------------
extern "C" void krnl_bp(
    const vec_t* mat_p0_v,   // row-major, vec words: (N0 * ceil(N/VEC))
    const vec_t* mat_p1_v,   // row-major, vec words: (N1 * ceil(N/VEC))
    const vec_t* vec_q_v,    // vec words: ceil(N/VEC)
    vec_t*       x_out_v,    // vec words: ceil(N/VEC)
    vec_t*       z_g_v,      // vec words: ceil(N/VEC)
    vec_t*       u_g_v,      // vec words: ceil(N/VEC)
    vec_t*       zold_g_v,   // vec words: ceil(N/VEC)
    data_t       rho,
    data_t       alpha,
    int          N,
    bool         do_termination,
    int          MAX_ITER
) {
#pragma HLS INTERFACE m_axi port=mat_p0_v  offset=slave bundle=gmem0 max_read_burst_length=64 depth=MAT0_WORDS_MAX
#pragma HLS INTERFACE m_axi port=mat_p1_v  offset=slave bundle=gmem1 max_read_burst_length=64 depth=MAT1_WORDS_MAX
#pragma HLS INTERFACE m_axi port=vec_q_v   offset=slave bundle=gmem2 max_read_burst_length=64 depth=WORDS_MAX
#pragma HLS INTERFACE m_axi port=x_out_v   offset=slave bundle=gmem3 max_write_burst_length=64 depth=WORDS_MAX
#pragma HLS INTERFACE m_axi port=z_g_v     offset=slave bundle=gmem4 max_read_burst_length=64 max_write_burst_length=64 depth=WORDS_MAX
#pragma HLS INTERFACE m_axi port=u_g_v     offset=slave bundle=gmem5 max_read_burst_length=64 max_write_burst_length=64 depth=WORDS_MAX
#pragma HLS INTERFACE m_axi port=zold_g_v  offset=slave bundle=gmem6 max_read_burst_length=64 max_write_burst_length=64 depth=WORDS_MAX

#pragma HLS INTERFACE s_axilite port=mat_p0_v bundle=control
#pragma HLS INTERFACE s_axilite port=mat_p1_v bundle=control
#pragma HLS INTERFACE s_axilite port=vec_q_v  bundle=control
#pragma HLS INTERFACE s_axilite port=x_out_v  bundle=control
#pragma HLS INTERFACE s_axilite port=z_g_v    bundle=control
#pragma HLS INTERFACE s_axilite port=u_g_v    bundle=control
#pragma HLS INTERFACE s_axilite port=zold_g_v bundle=control
#pragma HLS INTERFACE s_axilite port=rho      bundle=control
#pragma HLS INTERFACE s_axilite port=alpha    bundle=control
#pragma HLS INTERFACE s_axilite port=N        bundle=control
#pragma HLS INTERFACE s_axilite port=do_termination bundle=control
#pragma HLS INTERFACE s_axilite port=MAX_ITER bundle=control
#pragma HLS INTERFACE s_axilite port=return   bundle=control

    // Guardrails (synthesis-friendly)
    if (N > MAX_N) return;

    // If you want absolute peak bandwidth + simplicity:
    // require N multiple of VEC so every word is "full"
    // (You can remove this and rely on the bounds checks, but it's slower.)
    // if (N % VEC != 0) return;

    // On-chip state (persist across iterations)
    static data_t x_loc[MAX_N];
    static data_t z_loc[MAX_N];
    static data_t u_loc[MAX_N];
    static data_t zold_loc[MAX_N];
    static data_t q_loc[MAX_N];

#pragma HLS bind_storage variable=x_loc    type=ram_2p impl=uram
#pragma HLS bind_storage variable=z_loc    type=ram_2p impl=uram
#pragma HLS bind_storage variable=u_loc    type=ram_2p impl=uram
#pragma HLS bind_storage variable=zold_loc type=ram_2p impl=uram
#pragma HLS bind_storage variable=q_loc    type=ram_2p impl=uram

    // Initial loads (one-time, not every tile)
    load_vec(q_loc,    vec_q_v,   N);
    load_vec(z_loc,    z_g_v,     N);
    load_vec(u_loc,    u_g_v,     N);
    load_vec(zold_loc, zold_g_v,  N);

InitX:
    for (int i = 0; i < N; ++i) {
#pragma HLS PIPELINE II=1
        x_loc[i] = 0.0f;
    }

    const int N0 = N / 2;
    const int N1 = N - N0;

    data_t r_norm=0, s_norm=0, eps_pri=0, eps_dual=0;
    data_t x_norm=0, z_norm=0, u_norm=0;
    data_t sqrtN = std::sqrt((data_t)N);

MAXITER:
    for (int iter = 0; iter < MAX_ITER; ++iter) {
#pragma HLS PIPELINE OFF

        // Two internal instances (keeps your “multi-instance” structure)
        admm_rows<0>(mat_p0_v, q_loc, x_loc, z_loc, u_loc, zold_loc, rho, alpha, N, 0,  N0);
        admm_rows<1>(mat_p1_v, q_loc, x_loc, z_loc, u_loc, zold_loc, rho, alpha, N, N0, N1);

        if (do_termination) {
            compute_norms(x_loc, z_loc, zold_loc, u_loc, rho, N,
                          r_norm, s_norm, x_norm, z_norm, u_norm);

            eps_pri  = sqrtN * ABSTOL + RELTOL * std::fmax(x_norm, z_norm);
            eps_dual = sqrtN * ABSTOL + RELTOL * u_norm;

            if ((r_norm < eps_pri) && (s_norm < eps_dual)) {
                break;
            }
        }
    }

    // Final writeback (wide bursts)
    store_vec(x_out_v,  x_loc,    N);
    store_vec(z_g_v,    z_loc,    N);
    store_vec(u_g_v,    u_loc,    N);
    store_vec(zold_g_v, zold_loc, N);
}
