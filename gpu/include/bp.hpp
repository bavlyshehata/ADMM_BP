#ifndef BP_HPP
#define BP_HPP

#include <iostream>
#include <vector>
#include <cublas_v2.h>
#include <cuda_runtime.h>
#include <cusolverDn.h>

void bp(
    const double* dP, 
    const double* db, 
    double* dx, 
    int N, 
    int M, 
    int max_iters,
    double rho,
    double alpha); 


#endif