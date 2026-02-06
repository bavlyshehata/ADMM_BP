// #ifndef BP_HPP
// #define BP_HPP

// #include <cstddef>
// #include <hls_stream.h>
// #include <cmath>
// #include <stdint.h>

// #ifndef TILE_M
// #define TILE_M 512
// #endif
// #ifndef TILE_K
// #define TILE_K 512
// #endif


// typedef float data_t;

// // ADMM parameters for termination
// #define ABSTOL 1e-4f
// #define RELTOL 1e-2f


// void krnl_bp(
//     const data_t* mat_p0,   // [N*N], row-major
//     const data_t* mat_p1,   // [N*N], row-major
//     const data_t* vec_q,   // [N]
//     data_t*       x_out,   // [N]
//     data_t*       z_g,     // [N]
//     data_t*       u_g,     // [N]
//     data_t*       zold_g,  // [N]
//     data_t        rho,
//     data_t        alpha,
//     int           N,
//     bool          do_termination,
//     int          MAX_ITER
// );

// #endif // BP_HPP

#pragma once

#include <cmath>
#include <algorithm>
#include <cstdint>

#include <hls_vector.h>

using data_t = float;

// ---- Tunables ----
static constexpr int VEC = 16;          // 16 floats = 512-bit
static constexpr int TILE_M = 16;       // rows per tile (keep 16 to match partitioning)
static constexpr data_t ABSTOL = 1e-4f;
static constexpr data_t RELTOL = 1e-3f;

// Choose a maximum N that you expect. Must be >= runtime N.
static constexpr int MAX_N = 4096;

// Wide type for 512-bit bursts (works cleanly with Vitis HLS)
using vec_t = hls::vector<data_t, VEC>;

static inline data_t shrinkage(data_t a, data_t kappa) {
#pragma HLS INLINE
    data_t pos = (a - kappa) > 0.0f ? (a - kappa) : 0.0f;
    data_t neg = (-a - kappa) > 0.0f ? (-a - kappa) : 0.0f;
    return pos - neg;
}
