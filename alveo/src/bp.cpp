#include <iostream>
#include <cmath>
#include <hls_stream.h>

#define MAX_N 2048
#define MAX_ITER 32

// Streamless versions using local buffers

static void load_input(float* in, float* out, int size) {
    for (int i = 0; i < size; i++) {
    #pragma HLS pipeline
        out[i] = in[i];
    }
}

static void vec_sub(float* a, float* b, float* out, int N) {
    for (int i = 0; i < N; i++) {
    #pragma HLS pipeline
        out[i] = a[i] - b[i];
    }
}

static void mac(float* p, float* z_u, float* result, int N) {
    for (int i = 0; i < N; i++) {
        #pragma HLS pipeline
        result[i] = 0;
        for (int j = 0; j < N; j++) {
            result[i] += p[i * N + j] * z_u[j];
        }
    }
}

static void vec_add(float* a, float* b, float* out, int N) {
    for (int i = 0; i < N; i++) {
    #pragma HLS pipeline
        out[i] = a[i] + b[i];
    }
}

static void x_update(float* x, float* z, float* x_hat, float alpha, int N) {
    float reg_alpha = 1.0f - alpha;
    for (int i = 0; i < N; i++) {
    #pragma HLS pipeline
        x_hat[i] = alpha * x[i] + reg_alpha * z[i];
    }
}

static void shrinkage(float* in, float rho, float* result, int N) {
    for (int i = 0; i < N; i++) {
    #pragma HLS pipeline
        float sub0 = in[i] - rho;
        float sub1 = -in[i] - rho;
        float abs0 = (sub0 > 0) ? sub0 : 0;
        float abs1 = (sub1 > 0) ? sub1 : 0;
        result[i] = abs0 - abs1;
    }
}

static void compute_eps_pri(float norm_x, float norm_z, float* eps_pri, int N) {
    const float ABSTOL = 1e-4;
    const float RELTOL = 1e-2;
    *eps_pri = sqrtf((float)N) * ABSTOL + RELTOL * fmaxf(norm_x, norm_z);
}

static void compute_eps_dual(float norm_u, float rho, float* eps_dual, int N) {
    const float ABSTOL = 1e-4;
    const float RELTOL = 1e-2;
    *eps_dual = sqrtf((float)N) * ABSTOL + RELTOL * norm_u * rho;
}

extern "C" {
void krnl_bp(float* mat_p, float* vec_q, float* out, float rho, float alpha, int N) {
    #pragma HLS INTERFACE m_axi port=mat_p offset=slave bundle=gmem0
    #pragma HLS INTERFACE m_axi port=vec_q offset=slave bundle=gmem1
    #pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem2
    #pragma HLS INTERFACE s_axilite port=mat_p bundle=control
    #pragma HLS INTERFACE s_axilite port=vec_q bundle=control
    #pragma HLS INTERFACE s_axilite port=out bundle=control
    #pragma HLS INTERFACE s_axilite port=rho bundle=control
    #pragma HLS INTERFACE s_axilite port=alpha bundle=control
    #pragma HLS INTERFACE s_axilite port=N bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    float x[MAX_N] = {0};
    float u[MAX_N] = {0};
    float z[MAX_N] = {0};
    float z_old[MAX_N] = {0};
    float z_u[MAX_N], mac_res[MAX_N], x_hat[MAX_N], x_hat_u[MAX_N], shrinked[MAX_N], x_hat_z[MAX_N];

    float mat_p_local[MAX_N*MAX_N];
    float vec_q_local[MAX_N];

    load_input(mat_p, mat_p_local, N*N);
    load_input(vec_q, vec_q_local, N);

    for (int iter = 0; iter < MAX_ITER; iter++) {
        for (int i = 0; i < N; i++) z_old[i] = z[i];

        vec_sub(z, u, z_u, N);
        mac(mat_p_local, z_u, mac_res, N);
        vec_add(mac_res, vec_q_local, x, N);

        x_update(x, z_old, x_hat, alpha, N);
        vec_add(x_hat, u, x_hat_u, N);
        shrinkage(x_hat_u, rho, z, N);
        vec_sub(x_hat, z_old, x_hat_z, N);
        vec_add(x_hat_z, u, u, N);

        float r_norm = 0, s_norm = 0, norm_x = 0, norm_z = 0, norm_u = 0;
        for (int i = 0; i < N; i++) {
            float dx = x[i] - z[i];
            float dz = z[i] - z_old[i];
            r_norm += dx * dx;
            s_norm += (rho * dz) * (rho * dz);
            norm_x += x[i] * x[i];
            norm_z += z[i] * z[i];
            norm_u += u[i] * u[i];
        }

        r_norm = sqrtf(r_norm);
        s_norm = sqrtf(s_norm);
        norm_x = sqrtf(norm_x);
        norm_z = sqrtf(norm_z);
        norm_u = sqrtf(norm_u);

        float eps_pri, eps_dual;
        compute_eps_pri(norm_x, norm_z, &eps_pri, N);
        compute_eps_dual(norm_u, rho, &eps_dual, N);

        if (r_norm < eps_pri && s_norm < eps_dual) {
            break;
        }
    }

    for (int i = 0; i < N; i++) {
        #pragma HLS pipeline
        out[i] = x[i];
    }
}
}
