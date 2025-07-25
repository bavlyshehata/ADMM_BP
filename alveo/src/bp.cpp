#include <hls_stream.h>
#include <cmath>

#define MAX_CHUNK 256     // Fits comfortably in BRAM
#define MAX_ITER 32

extern "C" {
void krnl_bp(
    float* mat_p,    // [N*N] in HBM (row-major)
    float* vec_q,    // [N] in HBM
    float* out,      // [N] in HBM
    float rho,
    float alpha,
    int N,
    int chunk_size
) {
#pragma HLS INTERFACE m_axi port=mat_p offset=slave bundle=gmem0 max_read_burst_length=64 max_write_burst_length=64
#pragma HLS INTERFACE m_axi port=vec_q offset=slave bundle=gmem1 max_read_burst_length=64
#pragma HLS INTERFACE m_axi port=out   offset=slave bundle=gmem2 max_write_burst_length=64
#pragma HLS INTERFACE s_axilite port=mat_p      bundle=control
#pragma HLS INTERFACE s_axilite port=vec_q      bundle=control
#pragma HLS INTERFACE s_axilite port=out        bundle=control
#pragma HLS INTERFACE s_axilite port=rho        bundle=control
#pragma HLS INTERFACE s_axilite port=alpha      bundle=control
#pragma HLS INTERFACE s_axilite port=N          bundle=control
#pragma HLS INTERFACE s_axilite port=chunk_size bundle=control
#pragma HLS INTERFACE s_axilite port=return     bundle=control

    float x[MAX_CHUNK];
    float u[MAX_CHUNK];
    float z[MAX_CHUNK];
    float z_old[MAX_CHUNK];
    float z_u[MAX_CHUNK];
    float mac_res[MAX_CHUNK];
    float x_hat[MAX_CHUNK];
    float x_hat_z[MAX_CHUNK];

#pragma HLS ARRAY_PARTITION variable=x cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=u cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=z cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=z_old cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=z_u cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=mac_res cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=x_hat cyclic factor=16
#pragma HLS ARRAY_PARTITION variable=x_hat_z cyclic factor=16

    // Outer loop: process tiles/chunks of rows
    for(int offset = 0; offset < N; offset += chunk_size) {
        int chunk = ((offset + chunk_size) < N) ? chunk_size : (N - offset);

        // Initialize local vectors for the chunk from HBM
        for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
            x[i] = 0.0f;
            u[i] = 0.0f;
            z[i] = 0.0f;
            z_old[i] = 0.0f;
        }

        // ADMM iterations for this chunk
        for (int iter = 0; iter < MAX_ITER; iter++) {
            // z_u = z_old - u
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                z_u[i] = z_old[i] - u[i];
            }

            // mac_res = mat_p_chunk * z_u
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                float acc = 0.0f;
                for (int j = 0; j < N; ++j) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=4096
                    float val = mat_p[(offset + i) * N + j];
                    acc += val * z_u[i];
                }
                mac_res[i] = acc;
            }

            // x = mac_res + q
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                x[i] = mac_res[i] + vec_q[offset + i];
            }

            // x_hat = alpha * x + (1-alpha) * z_old
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                x_hat[i] = alpha * x[i] + (1.0f - alpha) * z_old[i];
            }

            // z = x_hat + u (shrinkage)
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                float zval = x_hat[i] + u[i];
                float sub0 = zval - rho;
                float sub1 = -zval - rho;
                float abs0 = (sub0 > 0) ? sub0 : 0;
                float abs1 = (sub1 > 0) ? sub1 : 0;
                z[i] = abs0 - abs1;
            }

            // x_hat_z = x_hat - z
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                x_hat_z[i] = x_hat[i] - z[i];
            }

            // u = u + x_hat_z
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                u[i] += x_hat_z[i];
            }

            // z_old = z
            for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
                z_old[i] = z[i];
            }
        }

        // Write output x chunk to HBM
        for (int i = 0; i < chunk; ++i) {
#pragma HLS PIPELINE II=1
            out[offset + i] = x[i];
        }
    }
}
}
