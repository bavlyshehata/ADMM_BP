#include "include/bp.hpp"
#include <cmath>
#include <iostream>

static bool approxEqual(data_t a, data_t b, float tol = 1e-2f){
    return std::fabs(a-b) < tol;
}

int main(int argc, char** argv) {
    const int N = 512;
    
    data_t P[N * N];
    data_t q[N];
    data_t x_out[N];
    data_t z[N];
    data_t u[N];
    data_t zold[N];


// Identity Matrix P
    for (int i = 0; i < N * N; i++) {
        P[i] = 0.0f;
    }
    for (int i = 0; i < N; i++) {
        P[i * N + i] = 1.0f;
    } 

// Expected Solution, sets q equal to our solution
    data_t expected[N] = {1.0f, -0.5f, 0.0f, 2.0f, -1.0f, 0.75f, 0.0f, -0.25f};

    for (int i = 0; i < N; i++) {
        q[i] = expected[i];
    }

//Initialization
    for (int i = 0; i < N; i++) {
        x_out[i] = 0.0f;
        z[i]     = 0.0f;
        u[i]     = 0.0f;
        zold[i]  = 0.0f;
    }
    
    data_t rho        = 1.0f;
    data_t alpha      = 1.0f;
    bool   terminate  = true;
    int    MAX_ITER   = 1;

//Calling The Kernel
    krnl_bp(P, q, x_out, z, u, zold, rho, alpha, N, terminate, MAX_ITER);

//Check Output
    std::cout << "Expected: ";
    for (int i = 0; i < N; i++) std::cout << expected[i] << " ";
    std::cout << "\n";

    std::cout << "Kernel: ";
    for (int i = 0; i < N; i++) std::cout << x_out[i] << " ";
    std::cout << "\n";

    bool pass = true;

    for (int i = 0; i < N; i++) {
        if (!approxEqual(x_out[i], expected[i], 1e-2f)) {
            pass = false;
            std::cout << "index " << i << " wrong, expected: " << expected[i] << " actual: " << x_out[i] << "\n";
        }
    }

    if (pass) {
        std::cout << "Pass!\n";
        return 0;
    } else {
        std::cout << "Fail :(\n";
        return 1;
    }
}
