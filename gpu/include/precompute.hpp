#include <iostream>
#include <vector>
#include <cublas_v2.h>
#include <cuda_runtime.h>
#include <cusolverDn.h>

void precompute(        
        std::vector<double>& hA_row, 
        std::vector<double>& hP_row, 
        std::vector<double>& hb, 
        std::vector<double>& hq, 
        int N, int M);

