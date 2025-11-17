#include "../include/bp.hpp"

static data_t shrinkage(data_t a, data_t kappa) {
    data_t pos = (a - kappa) > 0.0f ? (a - kappa) : 0.0f;
    data_t neg = (-a - kappa) > 0.0f ? (-a - kappa) : 0.0f;
    return pos - neg;
}

void krnl_bp(
    const data_t* mat_p,   // [N*N], row-major
    const data_t* vec_q,   // [N]
    data_t*       x_out,   // [N]
    data_t*       z_g,     // [N]
    data_t*       u_g,     // [N]
    data_t*       zold_g,  // [N]
    data_t        rho,
    data_t        alpha,
    int           N,
    bool          do_termination,
    int          MAX_ITER
) {
#pragma HLS INTERFACE m_axi port=mat_p   offset=slave bundle=gmem0 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port=vec_q   offset=slave bundle=gmem1 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port=x_out   offset=slave bundle=gmem2 max_write_burst_length=64
#pragma HLS INTERFACE m_axi port=z_g     offset=slave bundle=gmem3 max_read_burst_length=64 max_write_burst_length=64
#pragma HLS INTERFACE m_axi port=u_g     offset=slave bundle=gmem4 max_read_burst_length=64 max_write_burst_length=64
#pragma HLS INTERFACE m_axi port=zold_g  offset=slave bundle=gmem5 max_read_burst_length=64 max_write_burst_length=64

#pragma HLS INTERFACE s_axilite port=mat_p   bundle=control
#pragma HLS INTERFACE s_axilite port=vec_q   bundle=control
#pragma HLS INTERFACE s_axilite port=x_out   bundle=control
#pragma HLS INTERFACE s_axilite port=z_g     bundle=control
#pragma HLS INTERFACE s_axilite port=u_g     bundle=control
#pragma HLS INTERFACE s_axilite port=zold_g  bundle=control
#pragma HLS INTERFACE s_axilite port=rho     bundle=control
#pragma HLS INTERFACE s_axilite port=alpha   bundle=control
#pragma HLS INTERFACE s_axilite port=N       bundle=control
#pragma HLS INTERFACE s_axilite port=do_termination bundle=control
#pragma HLS INTERFACE s_axilite port=MAX_ITER bundle=control // <-- new
#pragma HLS INTERFACE s_axilite port=return  bundle=control

    data_t P_tile[TILE_M][TILE_K];
#pragma HLS ARRAY_PARTITION variable=P_tile dim=2 cyclic factor=16

    data_t zu_tile[TILE_K];
#pragma HLS ARRAY_PARTITION variable=zu_tile cyclic factor=16

    data_t x_tile[TILE_M];
    data_t z_tile[TILE_M];
    data_t u_tile[TILE_M];
    data_t zold_tile[TILE_M];
    data_t q_tile[TILE_M];
#pragma HLS ARRAY_PARTITION variable=x_tile    cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=z_tile    cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=u_tile    cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=zold_tile cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=q_tile    cyclic factor=16

    // For termination check
    data_t r_norm, s_norm, eps_pri, eps_dual;
    data_t x_norm, z_norm, u_norm;
    data_t sqrtN = std::sqrt((data_t)N);

    MAXITER: for (int iter = 0; iter < MAX_ITER; ++iter) {
        #pragma HLS PIPELINE OFF
// #pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ITER
        MLoop: for (int row_off = 0; row_off < N; row_off += TILE_M) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=16384
            const int M = (row_off + TILE_M <= N) ? TILE_M : (N - row_off);
            TileLoop: for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
                z_tile[i]    = z_g[row_off + i];
                u_tile[i]    = u_g[row_off + i];
                zold_tile[i] = z_tile[i];
                q_tile[i]    = vec_q[row_off + i];
                x_tile[i]    = 0.0f;
            }
            KLoop: for (int col_off = 0; col_off < N; col_off += TILE_K) {
                const int K = (col_off + TILE_K <= N) ? TILE_K : (N - col_off);
                ZuLoop: for (int k = 0; k < K; ++k) {
#pragma HLS PIPELINE II=1
                    zu_tile[k] = z_g[col_off + k] - u_g[col_off + k];
                }
                MLoop2: for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE
                    IndexLoop: for (int k = 0; k < K; ++k) {
#pragma HLS UNROLL factor=16
                        unsigned long long ridx = (unsigned long long)(row_off + i);
                        unsigned long long cidx = (unsigned long long)(col_off + k);
                        unsigned long long base = ridx * (unsigned long long)N + cidx;
                        P_tile[i][k] = mat_p[base];
                    }
                }
                AccLoop: for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE
                    data_t acc = x_tile[i];
                    PzuLoop: for (int k = 0; k < K; ++k) {
#pragma HLS UNROLL factor=16
                        acc += P_tile[i][k] * zu_tile[k];
                    }
                    x_tile[i] = acc;
                }
            }
            XTileLoop: for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
                x_tile[i] += q_tile[i];
            }
            XHatLoop: for (int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
                data_t xhat = alpha * x_tile[i] + (1.0f - alpha) * zold_tile[i];
                data_t znew = shrinkage(xhat + u_tile[i], 1.0f / rho);
                u_tile[i] = u_tile[i] + (xhat - znew);
                zold_g[row_off + i] = zold_tile[i];
                z_tile[i] = znew;
                z_g[row_off + i] = znew;
                x_out[row_off + i]  = x_tile[i];
                u_g[row_off + i]    = u_tile[i];
            }
        }

        // ---------------- Termination Check ----------------------
        if (do_termination) {
            r_norm = 0.0f;
            s_norm = 0.0f;
            x_norm = 0.0f;
            z_norm = 0.0f;
            u_norm = 0.0f;
            // norm calculations: r = x - z, s = -rho*(z-zold)
            normLoop: for (int i = 0; i < N; ++i) {
#pragma HLS PIPELINE II=1
                data_t xi = x_out[i];
                data_t zi = z_g[i];
                data_t zoldi = zold_g[i];
                data_t ui = u_g[i];

                data_t r = xi - zi;
                data_t s = -rho * (zi - zoldi);

                r_norm += r * r;
                s_norm += s * s;

                x_norm += xi * xi;
                z_norm += zi * zi;
                u_norm += ui * ui;
            }
            r_norm = std::sqrt(r_norm);
            s_norm = std::sqrt(s_norm);
            x_norm = std::sqrt(x_norm);
            z_norm = std::sqrt(z_norm);
            u_norm = std::sqrt(rho * rho * u_norm);

            eps_pri  = sqrtN * ABSTOL + RELTOL * std::fmax(x_norm, z_norm);
            eps_dual = sqrtN * ABSTOL + RELTOL * u_norm;

            if ((r_norm < eps_pri) && (s_norm < eps_dual)) {
                break;
            }
        }
    }
}
