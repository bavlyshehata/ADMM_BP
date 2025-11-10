// // // #include <hls_stream.h>
// // // #include <cmath>

// // // #define MAX_CHUNK 128     // Fits comfortably in BRAM
// // // #define MAX_ITER 32

// // // typedef float data_t;

// // // extern "C" {
// // // void krnl_bp(
// // //     data_t* mat_p,    // [N*N] in HBM (row-major)
// // //     data_t* vec_q,    // [N] in HBM
// // //     data_t* out,      // [N] in HBM
// // //     data_t rho,
// // //     data_t alpha,
// // //     int N,
// // //     int chunk_size
// // // ) {
// // // #pragma HLS INTERFACE m_axi port=mat_p offset=slave bundle=gmem0 max_read_burst_length=64 max_write_burst_length=64
// // // #pragma HLS INTERFACE m_axi port=vec_q offset=slave bundle=gmem1 max_read_burst_length=64
// // // #pragma HLS INTERFACE m_axi port=out   offset=slave bundle=gmem2 max_write_burst_length=64
// // // #pragma HLS INTERFACE s_axilite port=mat_p      bundle=control
// // // #pragma HLS INTERFACE s_axilite port=vec_q      bundle=control
// // // #pragma HLS INTERFACE s_axilite port=out        bundle=control
// // // #pragma HLS INTERFACE s_axilite port=rho        bundle=control
// // // #pragma HLS INTERFACE s_axilite port=alpha      bundle=control
// // // #pragma HLS INTERFACE s_axilite port=N          bundle=control
// // // #pragma HLS INTERFACE s_axilite port=chunk_size bundle=control
// // // #pragma HLS INTERFACE s_axilite port=return     bundle=control

// // //     data_t x[MAX_CHUNK];
// // //     data_t u[MAX_CHUNK];
// // //     data_t z[MAX_CHUNK];
// // //     data_t z_old[MAX_CHUNK];
// // //     data_t z_u[MAX_CHUNK];
// // //     data_t mac_res[MAX_CHUNK];
// // //     data_t x_hat[MAX_CHUNK];
// // //     data_t x_hat_z[MAX_CHUNK];

// // // #pragma HLS ARRAY_PARTITION variable=x cyclic factor=16
// // // #pragma HLS ARRAY_PARTITION variable=u cyclic factor=16
// // // #pragma HLS ARRAY_PARTITION variable=z cyclic factor=16
// // // #pragma HLS ARRAY_PARTITION variable=z_old cyclic factor=16
// // // #pragma HLS ARRAY_PARTITION variable=z_u cyclic factor=16
// // // #pragma HLS ARRAY_PARTITION variable=mac_res cyclic factor=16
// // // #pragma HLS ARRAY_PARTITION variable=x_hat cyclic factor=16
// // // #pragma HLS ARRAY_PARTITION variable=x_hat_z cyclic factor=16

// // //     // Outer loop: process tiles/chunks of rows
// // //     for(int offset = 0; offset < N; offset += chunk_size) {
// // //         int chunk = ((offset + chunk_size) < N) ? chunk_size : (N - offset);

// // //         // Initialize local vectors for the chunk from HBM
// // //         for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //             x[i] = 0.0f;
// // //             z[i] = 0.0f;
// // //             u[i] = 0.0f;
            
// // //             z_old[i] = 0.0f;
// // //         }

// // //         // ADMM iterations for this chunk
// // //         for (int iter = 0; iter < MAX_ITER; iter++) {
// // //             // z_u = z_old - u
// // //             for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //                 z_u[i] = z_old[i] - u[i];
// // //             }

// // //             // Compute x = P * (z_u) + q
// // //             for (int i = 0; i < chunk; ++i) {
// // //             #pragma HLS PIPELINE II=1
// // //                 data_t acc = 0.0f;
// // //                 for (int j = 0; j < N; ++j) {
// // //             #pragma HLS LOOP_TRIPCOUNT min=1 max=4096
// // //                     data_t val = mat_p[(offset + i) * N + j]; // P is N x N, row-major
// // //                     acc += val * z_u[j];
// // //                 }
// // //                 x[i] = acc + vec_q[offset + i]; // q is length N
// // //             }

// // //             // z_old = z
// // //             for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //                 z_old[i] = z[i];
// // //             }

// // //             // x_hat = alpha * x + (1-alpha) * z_old
// // //             for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //                 x_hat[i] = alpha * x[i] + (1.0f - alpha) * z_old[i];
// // //             }

// // //             // z = x_hat + u (shrinkage)
// // //             shrinkage_loop : for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //                 data_t zval = x_hat[i] + u[i];
// // //                 data_t sub0 = zval - rho;
// // //                 data_t sub1 = -zval - rho;
// // //                 data_t abs0 = (sub0 > 0) ? sub0 : 0;
// // //                 data_t abs1 = (sub1 > 0) ? sub1 : 0;
// // //                 z[i] = abs0 - abs1;
// // //             }

// // //             // x_hat_z = x_hat - z
// // //             for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //                 x_hat_z[i] = x_hat[i] - z[i];
// // //             }

// // //             // u = u + x_hat_z
// // //             for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //                 u[i] += x_hat_z[i];
// // //             }
// // //             data_t r_norm = 0.0f, s_norm = 0.0f, eps_pri = 0.0f, eps_dual = 0.0f;
// // //             data_t norm_x = 0.0f, norm_z = 0.0f, norm_ru = 0.0f;

// // //             // Compute r_norm = ||x - z||_2, s_norm = ||-rho*(z-z_old)||_2, norms for tolerances
// // //             for (int i = 0; i < chunk; ++i) {
// // //             #pragma HLS PIPELINE II=1
// // //                 data_t x_minus_z = x[i] - z[i];
// // //                 data_t z_diff = z[i] - z_old[i];
// // //                 data_t ru = rho * u[i];

// // //                 r_norm += x_minus_z * x_minus_z;
// // //                 s_norm += rho * rho * z_diff * z_diff;
// // //                 norm_x += x[i] * x[i];
// // //                 norm_z += z[i] * z[i];
// // //                 norm_ru += ru * ru;
// // //             }
// // //             r_norm = sqrt(r_norm);
// // //             s_norm = sqrt(s_norm);
// // //             norm_x = sqrt(norm_x);
// // //             norm_z = sqrt(norm_z);
// // //             norm_ru = sqrt(norm_ru);

// // //             // Compute tolerances
// // //             data_t sqrt_n = sqrt((data_t)chunk);
// // //             data_t ABSTOL = 1e-4f;
// // //             data_t RELTOL = 1e-2f;
// // //             eps_pri = sqrt_n * ABSTOL + RELTOL * ((norm_x > norm_z) ? norm_x : norm_z);
// // //             eps_dual = sqrt_n * ABSTOL + RELTOL * norm_ru;

// // //             // Stopping criterion
// // //             if (r_norm < eps_pri && s_norm < eps_dual) {
// // //                 break;
// // //             }
// // //         }

// // //         // Write output x chunk to HBM
// // //         for (int i = 0; i < chunk; ++i) {
// // // #pragma HLS PIPELINE II=1
// // //             out[offset + i] = x[i];
// // //         }
// // //     }
// // // }
// // // }

// // krnl_bp_tiled.hpp / .cpp
// #include <hls_stream.h>
// #include <cmath>
// #include <stdint.h>

// #ifndef TILE_M
// #define TILE_M 256      // rows per tile (fits in BRAM)
// #endif
// #ifndef TILE_K
// #define TILE_K 256      // cols per tile (fits in BRAM)
// #endif

// #ifndef MAX_ITER
// #define MAX_ITER 32
// #endif

// typedef float data_t;

// extern "C" {
// void krnl_bp(
//     const data_t* mat_p,   // [N*N], row-major
//     const data_t* vec_q,   // [N]
//     data_t*       x_out,   // [N] (current x iterate; also final result)
//     data_t*       z_g,     // [N]
//     data_t*       u_g,     // [N]
//     data_t*       zold_g,  // [N]
//     data_t        rho,
//     data_t        alpha,
//     int           N
// ) {
//     // ---------------- AXI INTERFACES ----------------
// #pragma HLS INTERFACE m_axi port=mat_p   offset=slave bundle=gmem0 max_read_burst_length=64
// #pragma HLS INTERFACE m_axi port=vec_q   offset=slave bundle=gmem1 max_read_burst_length=64
// #pragma HLS INTERFACE m_axi port=x_out   offset=slave bundle=gmem2 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=z_g     offset=slave bundle=gmem3 max_read_burst_length=64 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=u_g     offset=slave bundle=gmem4 max_read_burst_length=64 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=zold_g  offset=slave bundle=gmem5 max_read_burst_length=64 max_write_burst_length=64

// #pragma HLS INTERFACE s_axilite port=mat_p   bundle=control
// #pragma HLS INTERFACE s_axilite port=vec_q   bundle=control
// #pragma HLS INTERFACE s_axilite port=x_out   bundle=control
// #pragma HLS INTERFACE s_axilite port=z_g     bundle=control
// #pragma HLS INTERFACE s_axilite port=u_g     bundle=control
// #pragma HLS INTERFACE s_axilite port=zold_g  bundle=control
// #pragma HLS INTERFACE s_axilite port=rho     bundle=control
// #pragma HLS INTERFACE s_axilite port=alpha   bundle=control
// #pragma HLS INTERFACE s_axilite port=N       bundle=control
// #pragma HLS INTERFACE s_axilite port=return  bundle=control

//     // ---------------- LOCAL TILE BUFFERS ----------------
//     data_t P_tile[TILE_M][TILE_K];
// #pragma HLS ARRAY_PARTITION variable=P_tile dim=2 cyclic factor=16

//     data_t zu_tile[TILE_K];        // z_u segment = (z_old - u) over a K-tile
// #pragma HLS ARRAY_PARTITION variable=zu_tile cyclic factor=16

//     data_t x_tile[TILE_M];         // accumulated x for a row tile
//     data_t z_tile[TILE_M];         // z segment for the row tile
//     data_t u_tile[TILE_M];         // u segment for the row tile
//     data_t zold_tile[TILE_M];      // z_old segment for the row tile
//     data_t q_tile[TILE_M];         // q segment for the row tile
// #pragma HLS ARRAY_PARTITION variable=x_tile    cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=z_tile    cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=u_tile    cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=zold_tile cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=q_tile    cyclic factor=16

//     // --------------- MAIN ADMM ITERATION LOOP ---------------
// iter_loop:
//     for (int iter = 0; iter < MAX_ITER; ++iter) {
// #pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ITER
//         // Sweep row tiles
//         for (int row_off = 0; row_off < N; row_off += TILE_M) {
// #pragma HLS LOOP_TRIPCOUNT min=1 max=16384 // tune for your N
//             const int M = (row_off + TILE_M <= N) ? TILE_M : (N - row_off);

//             // Load z, u, z_old, q segments for this row tile; init x_tile
//         load_row_state:
//             for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE II=1
//                 z_tile[i]    = z_g[row_off + i];
//                 u_tile[i]    = u_g[row_off + i];
//                 zold_tile[i] = zold_g[row_off + i];
//                 q_tile[i]    = vec_q[row_off + i];
//                 x_tile[i]    = 0.0f;
//             }

//             // Accumulate P[row_off:row_off+M, :] * (z_old - u) across K-tiles
//             for (int col_off = 0; col_off < N; col_off += TILE_K) {
// #pragma HLS LOOP_TRIPCOUNT min=1 max=16384 // tune for your N
//                 const int K = (col_off + TILE_K <= N) ? TILE_K : (N - col_off);

//                 // zu_tile = (z_old - u) segment for this K-tile
//             load_zu:
//                 for (int k = 0; k < K; ++k) {
// #pragma HLS PIPELINE II=1
//                     data_t zoldv = zold_g[col_off + k];
//                     data_t uv    = u_g[col_off + k];
//                     zu_tile[k]   = zoldv - uv;
//                 }

//                 // Load P tile (M x K) from row-major P
//             load_P_tile:
//                 for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE
//                     // Inner loop partially unrolled on K dimension
//                     for (int k = 0; k < K; ++k) {
// #pragma HLS UNROLL factor=16
//                         // idx = (row_off + i) * N + (col_off + k)
//                         unsigned long long ridx = (unsigned long long)(row_off + i);
//                         unsigned long long cidx = (unsigned long long)(col_off + k);
//                         unsigned long long base = ridx * (unsigned long long)N + cidx;
//                         P_tile[i][k] = mat_p[base];
//                     }
//                 }

//                 // x_tile += P_tile * zu_tile
//             mac_tile:
//                 for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE
//                     data_t acc = x_tile[i];
//                     for (int k = 0; k < K; ++k) {
// #pragma HLS UNROLL factor=16
//                         acc += P_tile[i][k] * zu_tile[k];
//                     }
//                     x_tile[i] = acc;
//                 }
//             } // end col_off loop

//             // Finish x = P*(z_old - u) + q (for this row tile)
//         add_q:
//             for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE II=1
//                 x_tile[i] += q_tile[i];
//             }

//             // Over-relaxation, shrinkage, dual update; write back state
//         admm_updates:
//             for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE II=1
//                 // x_hat = alpha * x + (1-alpha) * z_old
//                 data_t xhat = alpha * x_tile[i] + (1.0f - alpha) * zold_tile[i];

//                 // Soft-threshold (shrinkage) with parameter rho: z = S_rho(xhat + u)
//                 data_t t  = xhat + u_tile[i];
//                 data_t zp = t - rho;
//                 data_t zn = -t - rho;
//                 data_t pos = (zp > 0.0f) ? zp : 0.0f;
//                 data_t neg = (zn > 0.0f) ? zn : 0.0f;
//                 data_t znew = pos - neg;

//                 // Dual update: u = u + (xhat - z)
//                 u_tile[i] = u_tile[i] + (xhat - znew);

//                 // Roll z_old and write current z
//                 zold_g[row_off + i] = z_tile[i];  // previous z becomes z_old for next iteration
//                 z_tile[i]           = znew;
//                 z_g[row_off + i]    = znew;

//                 // Write x segment (current iterate)
//                 x_out[row_off + i]  = x_tile[i];
//                 u_g[row_off + i]    = u_tile[i];
//             }
//         } // end row_off loop
//     } // end iter loop
// }
// }

//THIS IS THE WORKING ONE!!

// #include <hls_stream.h>
// #include <cmath>
// #include <stdint.h>

// #ifndef TILE_M
// #define TILE_M 512      // rows per tile (fits in BRAM)
// #endif
// #ifndef TILE_K
// #define TILE_K 512      // cols per tile (fits in BRAM)
// #endif

// #ifndef MAX_ITER
// #define MAX_ITER 32
// #endif

// typedef float data_t;

// // Shrinkage operator: shrinkage(a, kappa) = max(0, a - kappa) - max(0, -a - kappa)
// static data_t shrinkage(data_t a, data_t kappa) {
//     data_t pos = (a - kappa) > 0.0f ? (a - kappa) : 0.0f;
//     data_t neg = (-a - kappa) > 0.0f ? (-a - kappa) : 0.0f;
//     return pos - neg;
// }

// extern "C" {
// void krnl_bp(
//     const data_t* mat_p,   // [N*N], row-major
//     const data_t* vec_q,   // [N]
//     data_t*       x_out,   // [N] (current x iterate; also final result)
//     data_t*       z_g,     // [N]
//     data_t*       u_g,     // [N]
//     data_t*       zold_g,  // [N]
//     data_t        rho,
//     data_t        alpha,
//     int           N
// ) {
// #pragma HLS INTERFACE m_axi port=mat_p   offset=slave bundle=gmem0 max_read_burst_length=64
// #pragma HLS INTERFACE m_axi port=vec_q   offset=slave bundle=gmem1 max_read_burst_length=64
// #pragma HLS INTERFACE m_axi port=x_out   offset=slave bundle=gmem2 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=z_g     offset=slave bundle=gmem3 max_read_burst_length=64 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=u_g     offset=slave bundle=gmem4 max_read_burst_length=64 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=zold_g  offset=slave bundle=gmem5 max_read_burst_length=64 max_write_burst_length=64

// #pragma HLS INTERFACE s_axilite port=mat_p   bundle=control
// #pragma HLS INTERFACE s_axilite port=vec_q   bundle=control
// #pragma HLS INTERFACE s_axilite port=x_out   bundle=control
// #pragma HLS INTERFACE s_axilite port=z_g     bundle=control
// #pragma HLS INTERFACE s_axilite port=u_g     bundle=control
// #pragma HLS INTERFACE s_axilite port=zold_g  bundle=control
// #pragma HLS INTERFACE s_axilite port=rho     bundle=control
// #pragma HLS INTERFACE s_axilite port=alpha   bundle=control
// #pragma HLS INTERFACE s_axilite port=N       bundle=control
// #pragma HLS INTERFACE s_axilite port=return  bundle=control

//     data_t P_tile[TILE_M][TILE_K];
// #pragma HLS ARRAY_PARTITION variable=P_tile dim=2 cyclic factor=16

//     data_t zu_tile[TILE_K];
// #pragma HLS ARRAY_PARTITION variable=zu_tile cyclic factor=16

//     data_t x_tile[TILE_M];
//     data_t z_tile[TILE_M];
//     data_t u_tile[TILE_M];
//     data_t zold_tile[TILE_M];
//     data_t q_tile[TILE_M];
// #pragma HLS ARRAY_PARTITION variable=x_tile    cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=z_tile    cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=u_tile    cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=zold_tile cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=q_tile    cyclic factor=16

//     // --------------- MAIN ADMM ITERATION LOOP ---------------
//     for (int iter = 0; iter < MAX_ITER; ++iter) {
// #pragma HLS LOOP_TRIPCOUNT min=1 max=MAX_ITER
//         for (int row_off = 0; row_off < N; row_off += TILE_M) {
// #pragma HLS LOOP_TRIPCOUNT min=1 max=16384
//             const int M = (row_off + TILE_M <= N) ? TILE_M : (N - row_off);

//             // Load z, u, z_old, q segments for this row tile; init x_tile
//             for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE II=1
//                 z_tile[i]    = z_g[row_off + i];
//                 u_tile[i]    = u_g[row_off + i];
//                 zold_tile[i] = z_tile[i]; // Copy current z to zold_tile (before update)
//                 q_tile[i]    = vec_q[row_off + i];
//                 x_tile[i]    = 0.0f;
//             }

//             // Accumulate P[row_off:row_off+M, :] * (z - u) across K-tiles
//             for (int col_off = 0; col_off < N; col_off += TILE_K) {
//                 const int K = (col_off + TILE_K <= N) ? TILE_K : (N - col_off);

//                 // zu_tile = (z - u) for this K-tile
//                 for (int k = 0; k < K; ++k) {
// #pragma HLS PIPELINE II=1
//                     zu_tile[k] = z_g[col_off + k] - u_g[col_off + k];
//                 }

//                 // Load P tile (M x K)
//                 for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE
//                     for (int k = 0; k < K; ++k) {
// #pragma HLS UNROLL factor=16
//                         unsigned long long ridx = (unsigned long long)(row_off + i);
//                         unsigned long long cidx = (unsigned long long)(col_off + k);
//                         unsigned long long base = ridx * (unsigned long long)N + cidx;
//                         P_tile[i][k] = mat_p[base];
//                     }
//                 }

//                 // x_tile += P_tile * zu_tile
//                 for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE
//                     data_t acc = x_tile[i];
//                     for (int k = 0; k < K; ++k) {
// #pragma HLS UNROLL factor=16
//                         acc += P_tile[i][k] * zu_tile[k];
//                     }
//                     x_tile[i] = acc;
//                 }
//             } // end col_off loop

//             // Add q to x_tile: x = P*(z-u) + q
//             for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE II=1
//                 x_tile[i] += q_tile[i];
//             }

//             // Over-relaxation, shrinkage, dual update; write back state
//             for (int i = 0; i < M; ++i) {
// #pragma HLS PIPELINE II=1
//                 // x_hat = alpha * x + (1-alpha) * zold
//                 data_t xhat = alpha * x_tile[i] + (1.0f - alpha) * zold_tile[i];

//                 // Shrinkage with parameter 1/rho
//                 data_t znew = shrinkage(xhat + u_tile[i], 1.0f / rho);

//                 // Dual update
//                 u_tile[i] = u_tile[i] + (xhat - znew);

//                 // Write out zold for next iter
//                 zold_g[row_off + i] = zold_tile[i];
//                 z_tile[i] = znew;
//                 z_g[row_off + i] = znew;

//                 // Write x and u back to global memory
//                 x_out[row_off + i]  = x_tile[i];
//                 u_g[row_off + i]    = u_tile[i];
//             }
//         } // end row_off
//     } // end iter
// }
// }

// #include <hls_stream.h>
// #include <cmath>

// #define MAX_CHUNK 128     // Fits comfortably in BRAM
// #define MAX_ITER 32

// typedef float data_t;

// extern "C" {
// void krnl_bp(
//     data_t* mat_p,    // [N*N] in HBM (row-major)
//     data_t* vec_q,    // [N] in HBM
//     data_t* x_out,      // [N] in HBM
//     data_t* z_g,     // [N]
//     data_t* u_g,     // [N]
//     data_t* zold_g,  // [N]
//     data_t rho,
//     data_t alpha,
//     int N,
//     int chunk_size
// ) {
// #pragma HLS INTERFACE m_axi port=mat_p offset=slave bundle=gmem0 max_read_burst_length=64 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=vec_q offset=slave bundle=gmem1 max_read_burst_length=64
// #pragma HLS INTERFACE m_axi port=x_out offset=slave bundle=gmem2 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=z_g offset=slave bundle=gmem3 max_read_burst_length=64 max_write_burst_length=64
// #pragma HLS INTERFACE m_axi port=u_g offset=slave bundle=gmem4 max_read_burst_length=64
// #pragma HLS INTERFACE m_axi port=zold_g offset=slave bundle=gmem5 max_write_burst_length=64
// #pragma HLS INTERFACE s_axilite port=mat_p      bundle=control
// #pragma HLS INTERFACE s_axilite port=vec_q      bundle=control
// #pragma HLS INTERFACE s_axilite port=x_out        bundle=control
// #pragma HLS INTERFACE s_axilite port=z_g        bundle=control
// #pragma HLS INTERFACE s_axilite port=u_g        bundle=control
// #pragma HLS INTERFACE s_axilite port=zold_g     bundle=control
// #pragma HLS INTERFACE s_axilite port=rho        bundle=control
// #pragma HLS INTERFACE s_axilite port=alpha      bundle=control
// #pragma HLS INTERFACE s_axilite port=N          bundle=control
// #pragma HLS INTERFACE s_axilite port=chunk_size bundle=control
// #pragma HLS INTERFACE s_axilite port=return     bundle=control

//     data_t x[MAX_CHUNK];
//     data_t z_u[MAX_CHUNK];
//     data_t mac_res[MAX_CHUNK];
//     data_t x_hat[MAX_CHUNK];
//     data_t x_hat_z[MAX_CHUNK];

// #pragma HLS ARRAY_PARTITION variable=x cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=u_g cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=z_g cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=zold_g cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=z_u cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=mac_res cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=x_hat cyclic factor=16
// #pragma HLS ARRAY_PARTITION variable=x_hat_z cyclic factor=16

//     // Outer loop: process tiles/chunks of rows
//     for(int offset = 0; offset < N; offset += chunk_size) {
//         int chunk = ((offset + chunk_size) < N) ? chunk_size : (N - offset);

//         // Initialize local vectors for the chunk from HBM
//         for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//             x[i] = 0.0f;
//             z_g[i] = z_g[offset + i];
//             u_g[i] = u_g[offset + i];
            
//             zold_g[i] = zold_g[offset + i];
//         }

//         // ADMM iterations for this chunk
//         for (int iter = 0; iter < MAX_ITER; iter++) {
//             // z_u = z_old - u
//             for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//                 z_u[i] = zold_g[i] - u_g[i];
//             }

//             // Compute x = P * (z_u) + q
//             for (int i = 0; i < chunk; ++i) {
//             #pragma HLS PIPELINE II=1
//                 data_t acc = 0.0f;
//                 for (int j = 0; j < N; ++j) {
//             #pragma HLS LOOP_TRIPCOUNT min=1 max=4096
//                     data_t val = mat_p[(offset + i) * N + j]; // P is N x N, row-major
//                     acc += val * (z_g[j] - u_g[j]);
//                 }
//                 x[i] = acc + vec_q[offset + i]; // q is length N
//             }

//             // z_old = z
//             for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//                 zold_g[i] = z_g[i];
//             }

//             // x_hat = alpha * x + (1-alpha) * z_old
//             for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//                 x_hat[i] = alpha * x[i] + (1.0f - alpha) * zold_g[i];
//             }

//             // z = x_hat + u (shrinkage)
//             shrinkage_loop : for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//                 data_t zval = x_hat[i] + u_g[i];
//                 data_t sub0 = zval - (1.0f/rho);
//                 data_t sub1 = -zval - (1.0f/rho);
//                 data_t abs0 = (sub0 > 0) ? sub0 : 0;
//                 data_t abs1 = (sub1 > 0) ? sub1 : 0;
//                 z_g[i] = abs0 - abs1;
//             }

//             // x_hat_z = x_hat - z
//             for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//                 x_hat_z[i] = x_hat[i] - z_g[i];
//             }

//             // u = u + x_hat_z
//             for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//                 u_g[i] += x_hat_z[i];
//             }
//             for(int i = 0; i < chunk; ++i) {
//                 z_g[offset + i] = z_g[i];
//                 u_g[offset + i] = u_g[i];
//                 zold_g[offset + i] = zold_g[i];
//             }

//             data_t r_norm = 0.0f, s_norm = 0.0f, eps_pri = 0.0f, eps_dual = 0.0f;
//             data_t norm_x = 0.0f, norm_z = 0.0f, norm_ru = 0.0f;

//             // Compute r_norm = ||x - z||_2, s_norm = ||-rho*(z-z_old)||_2, norms for tolerances
//             for (int i = 0; i < chunk; ++i) {
//             #pragma HLS PIPELINE II=1
//                 data_t x_minus_z = x[i] - z_g[i];
//                 data_t z_diff = z_g[i] - zold_g[i];
//                 data_t ru = rho * u_g[i];

//                 r_norm += x_minus_z * x_minus_z;
//                 s_norm += rho * rho * z_diff * z_diff;
//                 norm_x += x[i] * x[i];
//                 norm_z += z_g[i] * z_g[i];
//                 norm_ru += ru * ru;
//             }
//             r_norm = sqrt(r_norm);
//             s_norm = sqrt(s_norm);
//             norm_x = sqrt(norm_x);
//             norm_z = sqrt(norm_z);
//             norm_ru = sqrt(norm_ru);

//             // Compute tolerances
//             data_t sqrt_n = sqrt((data_t)chunk);
//             data_t ABSTOL = 1e-4f;
//             data_t RELTOL = 1e-2f;
//             eps_pri = sqrt_n * ABSTOL + RELTOL * ((norm_x > norm_z) ? norm_x : norm_z);
//             eps_dual = sqrt_n * ABSTOL + RELTOL * norm_ru;

//             // Stopping criterion
//             if (r_norm < eps_pri && s_norm < eps_dual) {
//                 break;
//             }
//         }

//         // Write output x chunk to HBM
//         for (int i = 0; i < chunk; ++i) {
// #pragma HLS PIPELINE II=1
//             x_out[offset + i] = x[i];
//         }
//     }
// }
// }

#include <hls_stream.h>
#include <cmath>
#include <stdint.h>

#ifndef TILE_M
#define TILE_M 512
#endif
#ifndef TILE_K
#define TILE_K 512
#endif
// #ifndef MAX_ITER
// #define MAX_ITER 32x
// #endif

typedef float data_t;

// ADMM parameters for termination
#define ABSTOL 1e-4f
#define RELTOL 1e-2f

static data_t shrinkage(data_t a, data_t kappa) {
    data_t pos = (a - kappa) > 0.0f ? (a - kappa) : 0.0f;
    data_t neg = (-a - kappa) > 0.0f ? (-a - kappa) : 0.0f;
    return pos - neg;
}

extern "C" {
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
}