#include "include/bp.hpp"
#include <cmath>
#include <cstdint>
#include <iostream>
#include <vector>

// -------------------------
// Small helpers
// -------------------------
static inline bool approxEqual(data_t a, data_t b, data_t tol = 1e-2f) {
    return std::fabs(a - b) <= tol;
}

static inline void zero_word(vec_t &w) {
    for (int j = 0; j < VEC; ++j) w[j] = (data_t)0;
}

static void pack_vec_words(vec_t* dst_words, const data_t* src_scalar, int N_runtime) {
    const int vecN = (N_runtime + VEC - 1) / VEC;
    for (int w = 0; w < vecN; ++w) {
        vec_t word;
        for (int j = 0; j < VEC; ++j) {
            const int idx = w * VEC + j;
            word[j] = (idx < N_runtime) ? src_scalar[idx] : (data_t)0;
        }
        dst_words[w] = word;
    }
}

static void unpack_vec_words(data_t* dst_scalar, const vec_t* src_words, int N_runtime) {
    const int vecN = (N_runtime + VEC - 1) / VEC;
    for (int w = 0; w < vecN; ++w) {
        const vec_t word = src_words[w];
        for (int j = 0; j < VEC; ++j) {
            const int idx = w * VEC + j;
            if (idx < N_runtime) dst_scalar[idx] = word[j];
        }
    }
}

// Pack a row-block matrix stored as scalar row-major [rows_runtime x N_runtime]
// into vec words [rows_runtime * vecN_runtime], row-major in vec words.
static void pack_mat_rows(vec_t* dst_words,
                          const data_t* P_rows_scalar,
                          int rows_runtime,
                          int N_runtime)
{
    const int vecN = (N_runtime + VEC - 1) / VEC;
    for (int r = 0; r < rows_runtime; ++r) {
        for (int w = 0; w < vecN; ++w) {
            vec_t word;
            for (int j = 0; j < VEC; ++j) {
                const int c = w * VEC + j;
                word[j] = (c < N_runtime) ? P_rows_scalar[(size_t)r * N_runtime + c] : (data_t)0;
            }
            dst_words[(size_t)r * vecN + w] = word;
        }
    }
}

int main(int /*argc*/, char** /*argv*/) {
    // -------------------------
    // Runtime problem size
    // -------------------------
    const int N  = 512;         // what you want to test
    const int N0 = N / 2;
    const int N1 = N - N0;
    const int vecN = (N + VEC - 1) / VEC;

    if (N > MAX_N) {
        std::cerr << "ERROR: N (" << N << ") > MAX_N (" << MAX_N << ")\n";
        return 1;
    }

    // -------------------------
    // IMPORTANT for COSIM:
    // Allocate buffers to match *synthesis-time* depths (derived from MAX_N).
    // Otherwise wrapc will SIGSEGV in ENTER_WRAPC due to TV depth reads/writes.
    // -------------------------
    constexpr int WORDS_MAX = (MAX_N + VEC - 1) / VEC;  // vec words for a vector
    constexpr int N0_MAX    = MAX_N / 2;
    constexpr int N1_MAX    = MAX_N - N0_MAX;
    constexpr int MAT0_WORDS_MAX = N0_MAX * WORDS_MAX;  // vec words for P0
    constexpr int MAT1_WORDS_MAX = N1_MAX * WORDS_MAX;  // vec words for P1

    // Wide-port buffers (match kernel ports)
    std::vector<vec_t> mat_p0_v(MAT0_WORDS_MAX);
    std::vector<vec_t> mat_p1_v(MAT1_WORDS_MAX);
    std::vector<vec_t> vec_q_v(WORDS_MAX);
    std::vector<vec_t> x_out_v(WORDS_MAX);
    std::vector<vec_t> z_g_v(WORDS_MAX);
    std::vector<vec_t> u_g_v(WORDS_MAX);
    std::vector<vec_t> zold_g_v(WORDS_MAX);

    // Zero-fill all wide buffers (good hygiene; avoids X propagation in RTL too)
    for (auto &w : mat_p0_v) zero_word(w);
    for (auto &w : mat_p1_v) zero_word(w);
    for (auto &w : vec_q_v)  zero_word(w);
    for (auto &w : x_out_v)  zero_word(w);
    for (auto &w : z_g_v)    zero_word(w);
    for (auto &w : u_g_v)    zero_word(w);
    for (auto &w : zold_g_v) zero_word(w);

    // -------------------------
    // Build a simple identity split P = [P0; P1]
    // using scalar helper arrays (only for N=512 region)
    // -------------------------
    std::vector<data_t> P0s((size_t)N0 * N, 0.0f);
    std::vector<data_t> P1s((size_t)N1 * N, 0.0f);

    for (int i = 0; i < N; ++i) {
        if (i < N0) {
            P0s[(size_t)i * N + i] = 1.0f;
        } else {
            // P1 rows are indexed (i - N0), but columns are global [0..N-1]
            P1s[(size_t)(i - N0) * N + i] = 1.0f;
        }
    }

    // Pack into the *front* of the wide matrices.
    // Layout expected by kernel:
    //   mat_p0_v : row-major in vec words, (N0 rows) x (vecN words per row)
    //   mat_p1_v : (N1 rows) x (vecN words per row)
    pack_mat_rows(mat_p0_v.data(), P0s.data(), N0, N);
    pack_mat_rows(mat_p1_v.data(), P1s.data(), N1, N);

    // -------------------------
    // q, z, u, zold initialization
    // -------------------------
    std::vector<data_t> q_s(N, 0.0f);
    std::vector<data_t> z_s(N, 0.0f);
    std::vector<data_t> u_s(N, 0.0f);
    std::vector<data_t> zold_s(N, 0.0f);

    // Expected x after the "x = P*(z-u) + q" step with identity P and z=u=0 => x=q.
    // We'll only set first 8 entries nonzero; rest 0.
    std::vector<data_t> expected_x(N, 0.0f);
    expected_x[0] =  1.0f;
    expected_x[1] = -0.5f;
    expected_x[2] =  0.0f;
    expected_x[3] =  2.0f;
    expected_x[4] = -1.0f;
    expected_x[5] =  0.75f;
    expected_x[6] =  0.0f;
    expected_x[7] = -0.25f;

    for (int i = 0; i < N; ++i) q_s[i] = expected_x[i];

    pack_vec_words(vec_q_v.data(),  q_s.data(),    N);
    pack_vec_words(z_g_v.data(),    z_s.data(),    N);
    pack_vec_words(u_g_v.data(),    u_s.data(),    N);
    pack_vec_words(zold_g_v.data(), zold_s.data(), N);

    // -------------------------
    // Kernel params
    // -------------------------
    const data_t rho   = 1.0f;
    const data_t alpha = 1.0f;
    const bool   do_termination = false; // keep deterministic for 1 iter
    const int    MAX_ITER = 1;

    // -------------------------
    // Call kernel
    // -------------------------
    krnl_bp(mat_p0_v.data(),
            mat_p1_v.data(),
            vec_q_v.data(),
            x_out_v.data(),
            z_g_v.data(),
            u_g_v.data(),
            zold_g_v.data(),
            rho,
            alpha,
            N,
            do_termination,
            MAX_ITER);

    // -------------------------
    // Check output x_out
    // -------------------------
    std::vector<data_t> x_out_s(N, 0.0f);
    unpack_vec_words(x_out_s.data(), x_out_v.data(), N);

    std::cout << "Expected x (first 16): ";
    for (int i = 0; i < 16; ++i) std::cout << expected_x[i] << " ";
    std::cout << "\n";

    std::cout << "Kernel   x (first 16): ";
    for (int i = 0; i < 16; ++i) std::cout << x_out_s[i] << " ";
    std::cout << "\n";

    bool pass = true;
    for (int i = 0; i < N; ++i) {
        if (!approxEqual(x_out_s[i], expected_x[i], 1e-2f)) {
            pass = false;
            std::cout << "Mismatch at i=" << i
                      << " expected=" << expected_x[i]
                      << " got=" << x_out_s[i] << "\n";
            break; // reduce spam
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
