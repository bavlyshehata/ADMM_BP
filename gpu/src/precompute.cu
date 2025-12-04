#include "../include/precompute.hpp"

#define CUDA_CHECK(err) do { \
  cudaError_t e = (err); \
  if (e != cudaSuccess) { \
    std::cerr << "CUDA error: " << cudaGetErrorString(e) << " @ " << __LINE__ << "\n"; \
    std::exit(EXIT_FAILURE); \
  } \
} while(0)

#define CUBLAS_CHECK(err) do { \
  cublasStatus_t s = (err); \
  if (s != CUBLAS_STATUS_SUCCESS) { \
    std::cerr << "cuBLAS error @ " << __LINE__ << "\n"; \
    std::exit(EXIT_FAILURE); \
  } \
} while(0)

#define CUSOLVER_CHECK(err) do { \
  cusolverStatus_t s = (err); \
  if (s != CUSOLVER_STATUS_SUCCESS) { \
    std::cerr << "cuSOLVER error @ " << __LINE__ << "\n"; \
    std::exit(EXIT_FAILURE); \
  } \
} while(0)

// Add 1.0 to the diagonal of an MxM column-major matrix
__global__ void add_identity(double* __restrict__ P, int M) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < M) {
        P[i + i * (size_t)M] += 1.0; // diag index for col-major
    }
}
/*

    AAt = A*A';
    P = eye(n) - A' * (AAt \ A);
    q = A' * (AAt \ b);

*/
void precompute(
        std::vector<double>& hA_row, 
        std::vector<double>& hP_row, 
        std::vector<double>& hb, 
        std::vector<double>& hq, 
        int N, int M) {
    

    // Convert to column-major for device
    std::vector<double> hA_col(N * M);
    for (int r = 0; r < N; ++r)
        for (int c = 0; c < M; ++c)
            hA_col[c * N + r] = hA_row[r * M + c];

    // ---- Device alloc ----
    double *dA = nullptr;        // N x M
    double *db = nullptr;        // N x 1
    double *dAAt = nullptr;      // N x N
    double *dx = nullptr;       // N x M


    CUDA_CHECK(cudaMalloc(&dA,   sizeof(double) * N * M));
    CUDA_CHECK(cudaMalloc(&dAAt, sizeof(double) * N * N));
    CUDA_CHECK(cudaMalloc(&db,   sizeof(double) * N));
    CUDA_CHECK(cudaMalloc(&dx,   sizeof(double) * N));
    CUDA_CHECK(cudaMemcpy(dA, hA_col.data(), sizeof(double)*N*M, cudaMemcpyHostToDevice));
    CUDA_CHECK(cudaMemcpy(db, hb.data(), sizeof(double)*N, cudaMemcpyHostToDevice));

    cublasHandle_t cublasH;  CUBLAS_CHECK(cublasCreate(&cublasH));
    cusolverDnHandle_t cusolverH; CUSOLVER_CHECK(cusolverDnCreate(&cusolverH));

    const double one = 1.0, zero = 0.0, neg_one = -1.0;
    // Compute AAt = A * A^T
    CUBLAS_CHECK(cublasDgemm(cublasH, CUBLAS_OP_N, CUBLAS_OP_T, N, N, M, &one, dA, N, dA, N, &zero, dAAt, N));
    
    // Compute x = A^T * b
    CUBLAS_CHECK(cublasDgemv(cublasH, CUBLAS_OP_T, N, N, &one, dAAt, N, db, 1, &zero, dx, 1)); 

    // Setting up Buffer for potrf
    int lwork = 0;
    double *dWork = nullptr; CUDA_CHECK(cudaMalloc(&dWork, sizeof(double) * lwork));
    CUSOLVER_CHECK(cusolverDnDpotrf_bufferSize(cusolverH, CUBLAS_FILL_MODE_LOWER, N, dAAt, N, &lwork));
    CUSOLVER_CHECK(cusolverDnDpotrf(cusolverH, CUBLAS_FILL_MODE_LOWER, N, dAAt, N, dWork, lwork, dInfo));


    


    // int *dInfo = nullptr; CUDA_CHECK(cudaMalloc(&dInfo, sizeof(int)));
    // int* d_ipiv;   cudaMalloc(&d_ipiv, M * sizeof(int));
    // int* d_info;   cudaMalloc(&d_info, sizeof(int));
    

    // int hInfo = 0;
    // CUDA_CHECK(cudaMemcpy(&hInfo, dInfo, sizeof(int), cudaMemcpyDeviceToHost));
    // if (hInfo != 0) {
    //     std::cerr << "potrf failed: info = " << hInfo << " (AAt may not be SPD)\n";
    //     std::exit(EXIT_FAILURE);
    // }

    // // Solve AAt * x = b
    // cusolverDnSgetrs(cusolverH, CUBLAS_OP_N, M, 1, dAAt, M, d_ipiv, db, M, d_info);
    // // Compute q = A^T * b
    // cublasSgemv(cublasH,
    //             CUBLAS_OP_T,
    //             M, N,
    //             &one,
    //             dA, M,
    //             db, 1,
    //             &zero,
    //             dq, 1);


    // CUDA_CHECK(cudaMemcpy(dX, dA, sizeof(double)*N*M, cudaMemcpyDeviceToDevice));
    // CUSOLVER_CHECK(cusolverDnDpotrs(
    //     cusolverH, CUBLAS_FILL_MODE_LOWER, N, M, dAAt, N, dX, N, dInfo));

        
    // CUDA_CHECK(cudaMemcpy(&hInfo, dInfo, sizeof(int), cudaMemcpyDeviceToHost));
    // if (hInfo != 0) {
    //     std::cerr << "potrs failed: info = " << hInfo << "\n";
    //     std::exit(EXIT_FAILURE);
    // }

    // CUBLAS_CHECK(cublasDgemm(
    //     cublasH,
    //     CUBLAS_OP_T, CUBLAS_OP_N,
    //     M, M, N,
    //     &one,
    //     dA, N,   // A^T via op_T
    //     dX, N,   // X
    //     &zero,
    //     dY, M    // Y
    // ));

    // CUDA_CHECK(cudaMemcpy(dP, dY, sizeof(double)*M*M, cudaMemcpyDeviceToDevice));
    // CUBLAS_CHECK(cublasDscal(cublasH, M*M, &neg_one, dP, 1));

    // int threads = 256;
    // int blocks = (M + threads - 1) / threads;
    // add_identity<<<blocks, threads>>>(dP, M);
    // CUDA_CHECK(cudaGetLastError());
    // CUDA_CHECK(cudaDeviceSynchronize());

    // // Copy P back (column-major) and print as row-major
    // std::vector<double> hP_col(M * M);
    // CUDA_CHECK(cudaMemcpy(hP_col.data(), dP, sizeof(double)*M*M, cudaMemcpyDeviceToHost));
    // for (int r = 0; r < M; ++r)
    //     for (int c = 0; c < M; ++c)
    //         hP_row[r * M + c] = hP_col[c * M + r];

    // for (int i = 0; i < M; ++i) {
    //     hq[i] = dq[i];
    // }



    // // Cleanup
    // CUDA_CHECK(cudaFree(dA));
    // CUDA_CHECK(cudaFree(db));
    // CUDA_CHECK(cudaFree(dq));
    // CUDA_CHECK(cudaFree(dAAt));
    // CUDA_CHECK(cudaFree(dX));
    // CUDA_CHECK(cudaFree(dY));
    // CUDA_CHECK(cudaFree(dP));
    // CUDA_CHECK(cudaFree(dWork));
    // CUDA_CHECK(cudaFree(dInfo));
    // CUBLAS_CHECK(cublasDestroy(cublasH));
    // CUSOLVER_CHECK(cusolverDnDestroy(cusolverH));

}
