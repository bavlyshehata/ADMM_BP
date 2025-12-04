#ifndef BP_HPP
#define BP_HPP

#include <cstddef>
#include <hls_stream.h>
#include <cmath>
#include <stdint.h>

#ifndef TILE_M
#define TILE_M 512
#endif
#ifndef TILE_K
#define TILE_K 512
#endif


typedef float data_t;

// ADMM parameters for termination
#define ABSTOL 1e-4f
#define RELTOL 1e-2f


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
);

#endif // BP_HPP