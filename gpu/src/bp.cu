#include "bp.hpp"

__global__ void shrinkage(double* v, double kappa, int N) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < N) {
        double val = v[i];
        if (val > kappa) {
            v[i] = val - kappa;
        } else if (val < -kappa) {
            v[i] = val + kappa;
        } else {
            v[i] = 0.0;
        }
    }
}

__global__ void vector_substract(double* a, double* b, double* c, int N) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < N) {
        c[i] = a[i] - b[i];
    }
}


__global__ void matrix_vector_multiply(const double* A, const double* x, double* b, int N, int M) {
    int row = blockIdx.x * blockDim.x + threadIdx.x;
    if (row < M) {
        double sum = 0.0;
        for (int j = 0; j < N; ++j) {
            sum += A[row * N + j] * x[j];
        }
        b[row] = sum;
    }
}

__global__ void vector_add(double* a, double a_scale, double* b, double b_scale, double* c, int N) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < N) {
        c[i] = a_scale * a[i] + b_scale * b[i];
    }
}


void bp(
    const double* hP, 
    const double* hq, 
    double* hx, 
    double* hA,
    double* hb,
    int N, 
    int M, 
    int max_iters,
    double rho,
    double alpha) {


    double* dP = nullptr; 
    double* dq = nullptr;
    double* dx = nullptr; 
    double* dz = nullptr; 
    double* du = nullptr; 
    double* dtemp = nullptr;

    double* dz_old = nullptr;
    double* dx_hat = nullptr;

    cudaMalloc(&dP, N * N * sizeof(double));
    cudaMalloc(&dq, N * sizeof(double));
    cudaMalloc(&dx, N * sizeof(double));
    cudaMalloc(&dz, N * sizeof(double));
    cudaMalloc(&du, N * sizeof(double));
    cudaMalloc(&dtemp, N * sizeof(double));

    cudaMemcpy(dP, hP, N * N * sizeof(double), cudaMemcpyHostToDevice);
    cudaMemcpy(dq, hq, N * sizeof(double), cudaMemcpyHostToDevice);

    cudaMemset(dx, 0, N * sizeof(double));
    cudaMemset(dz, 0, N * sizeof(double));
    cudaMemset(du, 0, N * sizeof(double));
    cudaMemset(dz_old, 0, N * sizeof(double));
    cudaMemset(dx_hat, 0, N * sizeof(double));

    for (int iter = 0; iter < max_iters; ++iter) {
        
        vector_substract<<<(N + 255) / 256, 256>>>(dz, du, dx, N);
        matrix_vector_multiply<<<(M + 255) / 256, 256>>>(dP, dx, dx, N, M);
        vector_add<<<(N + 255) / 256, 256>>>(dx, 1.0, dz, 1.0, dx, N);  
        cudaMemcpy(dz_old, dz, N * sizeof(double), cudaMemcpyDeviceToDevice);
        vector_add<<<(N + 255) / 256, 256>>>(dx, alpha, dx_hat, 1 - alpha, dz_old, N);
        
        // Update z
        vector_add<<<(N + 255) / 256, 256>>>(dx_hat, 1.0, du, 1.0, dtemp, N);
        shrinkage<<<(N + 255) / 256, 256>>>(dtemp, 1.0 / rho, N);

        vector_substract<<<(N + 255) / 256, 256>>>(dx_hat, dz, dtemp, N);
        vector_add<<<(N + 255) / 256, 256>>>(dtemp, 1.0, du, 1.0, du, N);
    }

}