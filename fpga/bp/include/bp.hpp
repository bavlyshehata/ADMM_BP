#pragma once

#include <cstdint>
#include <cmath>
#include <algorithm>

using data_t = float;

#ifndef VEC
#define VEC 16
#endif

#ifndef TILE_M
#define TILE_M 16
#endif

#ifndef MAX_N
#define MAX_N 4096
#endif

#ifndef ABSTOL
#define ABSTOL 1e-4f
#endif

#ifndef RELTOL
#define RELTOL 1e-3f
#endif

struct alignas(64) vec_t {
    data_t v[VEC];

    data_t& operator[](int i) { return v[i]; }
    const data_t& operator[](int i) const { return v[i]; }
};

static_assert(sizeof(vec_t) == VEC * sizeof(data_t), "vec_t size mismatch");

static inline data_t shrinkage(data_t a, data_t kappa) {
#pragma HLS INLINE
    data_t pos = (a - kappa) > 0.0f ? (a - kappa) : 0.0f;
    data_t neg = (-a - kappa) > 0.0f ? (-a - kappa) : 0.0f;
    return pos - neg;
}

extern "C" void krnl_bp(
    const vec_t* mat_p0_v,
    const vec_t* mat_p1_v,
    const vec_t* vec_q_v,
    vec_t*       x_out_v,
    vec_t*       z_g_v,
    vec_t*       u_g_v,
    vec_t*       zold_g_v,
    data_t       rho,
    data_t       alpha,
    int          N,
    bool         do_termination,
    int          MAX_ITER
);
