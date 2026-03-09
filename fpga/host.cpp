#include "xcl2.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>
#include "bp/include/bp.hpp"



static void pack_vec(std::vector<vec_t, aligned_allocator<vec_t>>& dst,
                     const std::vector<float>& src, int N) {
    int vecN = (N + VEC - 1) / VEC;
    for (int w = 0; w < vecN; ++w) {
        vec_t v;
        for (int j = 0; j < VEC; ++j) {
            int idx = w * VEC + j;
            v[j] = (idx < N) ? src[idx] : 0.0f;
        }
        dst[w] = v;
    }
}

static void unpack_vec(std::vector<float>& dst,
                       const std::vector<vec_t, aligned_allocator<vec_t>>& src,
                       int N) {
    int vecN = (N + VEC - 1) / VEC;
    dst.assign(N, 0.0f);
    for (int w = 0; w < vecN; ++w) {
        const vec_t& v = src[w];
        for (int j = 0; j < VEC; ++j) {
            int idx = w * VEC + j;
            if (idx < N) dst[idx] = v[j];
        }
    }
}

// ---------- Small timing helper ----------
template <class Clock, class Dur>
static inline long long ms_between(const std::chrono::time_point<Clock, Dur>& a,
                                   const std::chrono::time_point<Clock, Dur>& b) {
    return std::chrono::duration_cast<std::chrono::nanoseconds>(b - a).count();
}

// ---------- CSV helpers ----------
static std::vector<float> readCSV(const std::string &filename) {
    std::vector<float> result;
    std::ifstream file(filename);
    if (!file) return result; // empty if missing
    std::string line, cell;
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        while (std::getline(ss, cell, ',')) {
            // trim spaces
            cell.erase(std::remove_if(cell.begin(), cell.end(), ::isspace), cell.end());
            if (!cell.empty()) {
                try { result.push_back(std::stof(cell)); }
                catch (...) {
                    std::cerr << "Warning: non-float in " << filename << ": \"" << cell << "\"\n";
                }
            }
        }
    }
    return result;
}

static std::vector<float> matVec(const std::vector<float> &A, const std::vector<float> &x, int N) {
    std::vector<float> y(N, 0.0f);
    for (int i = 0; i < N; ++i) {
        float acc = 0.0f;
        const float *row = &A[(size_t)i * N];
        for (int j = 0; j < N; ++j) acc += row[j] * x[j];
        y[i] = acc;
    }
    return y;
}

static bool approxEqual(const std::vector<float> &a, const std::vector<float> &b, float tol = 1e-3f) {
    if (a.size() != b.size()) return false;
    for (size_t i = 0; i < a.size(); ++i) {
        if (std::fabs(a[i] - b[i]) > tol) return false;
    }
    return true;
}

int main(int argc, char **argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>\n";
        return EXIT_FAILURE;
    }
    std::string xclbin_path = argv[1];
    cl_int err = CL_SUCCESS;

    // ---------- Load CSVs ----------
    // Required: src/P.csv (N x N), src/Q.csv (N)
    // Optional: src/A.csv (N x N), src/B.csv (N) for Ax≈b check
    auto P_std = readCSV("bp/src/P.csv");
    auto Q_std = readCSV("bp/src/Q.csv");
    auto A_std = readCSV("bp/src/A.csv"); // optional
    auto B_std = readCSV("bp/src/B.csv"); // optional

    if (Q_std.empty() || P_std.empty()) {
        std::cerr << "Error: Missing or empty src/P.csv or src/Q.csv\n";
        return EXIT_FAILURE;
    }

    size_t N = Q_std.size();
    if (P_std.size() != N * N) {
        std::cerr << "Error: P.csv size (" << P_std.size()
                  << ") != N*N (" << (N * N) << "), N inferred from Q.csv (" << N << ")\n";
        return EXIT_FAILURE;
    }
    if ((!A_std.empty() && A_std.size() != N * N) || (!B_std.empty() && B_std.size() != N)) {
        std::cerr << "Warning: A.csv/B.csv dimensions don’t match N — skipping Ax≈b check.\n";
        A_std.clear(); B_std.clear();
    }

    int Ni = (int)N;
    int vecN = (Ni + VEC - 1) / VEC;

    std::vector<vec_t, aligned_allocator<vec_t>> Qv(vecN);
    std::vector<vec_t, aligned_allocator<vec_t>> Xv(vecN);
    std::vector<vec_t, aligned_allocator<vec_t>> Zv(vecN);
    std::vector<vec_t, aligned_allocator<vec_t>> Uv(vecN);
    std::vector<vec_t, aligned_allocator<vec_t>> ZOLDv(vecN);

    int N0 = Ni / 2;
    int N1 = Ni - N0;

    size_t P0_words = (size_t)N0 * vecN;
    size_t P1_words = (size_t)N1 * vecN;

    std::vector<vec_t, aligned_allocator<vec_t>> P0v(P0_words);
    std::vector<vec_t, aligned_allocator<vec_t>> P1v(P1_words);

    auto zero_word = [](){
        vec_t v;
        for(int j=0;j<VEC;++j) v[j]=0.0f;
        return v;
    };

    for (int w = 0; w < vecN; ++w) {
        Xv[w]    = zero_word();
        Zv[w]    = zero_word();
        Uv[w]    = zero_word();
        ZOLDv[w] = zero_word();
    }

    for (int r = 0; r < Ni; ++r) {
        bool in0 = (r < N0);
        int local_r = in0 ? r : (r - N0);
        auto& Pv = in0 ? P0v : P1v;

        for (int w = 0; w < vecN; ++w) {
            vec_t word;
            for (int j = 0; j < VEC; ++j) {
                int c = w * VEC + j;
                word[j] = (c < Ni) ? P_std[(size_t)r * Ni + c] : 0.0f;
            }
            Pv[(size_t)local_r * vecN + w] = word;
        }
    }

    pack_vec(Qv, Q_std, Ni);

    // Scalars
    float rho   = 1.0f;
    float alpha = 1.0f;

    // ---------- OpenCL setup ----------
    auto devices = xcl::get_xil_devices();
    auto fileBuf = xcl::read_binary_file(xclbin_path);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    cl::Context context;
    cl::CommandQueue q;
    cl::Kernel kernel;
    bool programmed = false;

    std::cout << "Programming FPGA..." << std::endl;

    for (unsigned i = 0; i < devices.size(); ++i) {
        auto device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        OCL_CHECK(err, cl::Program program(context, {device}, bins, NULL, &err));
        if (err == CL_SUCCESS) {
            OCL_CHECK(err, kernel = cl::Kernel(program, "krnl_bp", &err));
            programmed = true;
            break;
        }
    }
    if (!programmed) {
        std::cerr << "Error: failed to program any device.\n";
        return EXIT_FAILURE;
    }
    std::cout << "Finished programming FPGA." << std::endl;

    // ---------- Create device buffers ----------
    OCL_CHECK(err, cl::Buffer dP0(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                 sizeof(vec_t) * P0v.size(), P0v.data(), &err));
    OCL_CHECK(err, cl::Buffer dP1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                 sizeof(vec_t) * P1v.size(), P1v.data(), &err));
    OCL_CHECK(err, cl::Buffer dQ(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                 sizeof(vec_t) * Qv.size(), Qv.data(), &err));
    OCL_CHECK(err, cl::Buffer dX(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                 sizeof(vec_t) * Xv.size(), Xv.data(), &err));
    OCL_CHECK(err, cl::Buffer dZ(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                 sizeof(vec_t) * Zv.size(), Zv.data(), &err));
    OCL_CHECK(err, cl::Buffer dU(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                 sizeof(vec_t) * Uv.size(), Uv.data(), &err));
    OCL_CHECK(err, cl::Buffer dZOLD(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                    sizeof(vec_t) * ZOLDv.size(), ZOLDv.data(), &err));

    // ---------- Set kernel args (order MUST match kernel) ----------
    // void krnl_bp(const float* mat_p, const float* vec_q, float* x_out,
    //              float* z_g, float* u_g, float* zold_g, float rho, float alpha, int N)
    OCL_CHECK(err, err = kernel.setArg(0, dP0));     // mat_p
    OCL_CHECK(err, err = kernel.setArg(1, dP1));     // mat_p
    OCL_CHECK(err, err = kernel.setArg(2, dQ));     // vec_q
    OCL_CHECK(err, err = kernel.setArg(3, dX));     // x_out
    OCL_CHECK(err, err = kernel.setArg(4, dZ));     // z_g
    OCL_CHECK(err, err = kernel.setArg(5, dU));     // u_g
    OCL_CHECK(err, err = kernel.setArg(6, dZOLD));  // zold_g
    OCL_CHECK(err, err = kernel.setArg(7, rho));    // rho
    OCL_CHECK(err, err = kernel.setArg(8, alpha));  // alpha
    OCL_CHECK(err, err = kernel.setArg(9, Ni));     // N
    bool do_termination = true;
    OCL_CHECK(err, err = kernel.setArg(10, do_termination));
    int MAX_ITER = 10;
    OCL_CHECK(err, err = kernel.setArg(11, MAX_ITER));

    // ---------- H2D ----------
    auto t0 = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({dP0, dP1, dQ, dZ, dU, dZOLD}, 0));
    OCL_CHECK(err, err = q.finish());
    auto t1 = std::chrono::high_resolution_clock::now();

    // ---------- Run ----------
    auto t2 = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueTask(kernel));
    OCL_CHECK(err, err = q.finish());
    auto t3 = std::chrono::high_resolution_clock::now();

    // ---------- D2H ----------
    auto t4 = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({dX, dZ, dU, dZOLD}, CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err, err = q.finish());
    auto t5 = std::chrono::high_resolution_clock::now();

    // ---------- Timings ----------
    std::cout << "Migrate to device: " << ms_between(t0, t1)/(1000000.00) << " ms\n";
    std::cout << "Kernel execution : " << ms_between(t2, t3)/(1000000.00) << " ms\n";
    std::cout << "Migrate to host  : " << ms_between(t4, t5)/(1000000.00) << " ms\n";

    // ---------- Output ----------
    std::vector<float> X;
    unpack_vec(X, Xv, Ni);

    std::cout << "x (first 100): ";
    for (size_t i = 0; i < std::min<size_t>(100, X.size()); ++i) {
        std::cout << X[i] << (i + 1 < 100 ? ", " : "");
    }
    if (X.size() > 100) std::cout << " ...";
    std::cout << "\n";

    // ---------- Optional CPU check for Ax≈b (if provided) ----------
    if (!A_std.empty() && !B_std.empty()) {
        auto Ax = matVec(A_std, std::vector<float>(X.begin(), X.end()), (int)N);
        bool ok = approxEqual(Ax, B_std, 1e-2f);
        std::cout << "Optional Ax≈b check: " << (ok ? "PASS" : "FAIL") << "\n";
        if (!ok) {
            // print small snippet
            std::cout << "Ax (first 10): ";
            for (size_t i = 0; i < std::min<size_t>(10, Ax.size()); ++i) {
                std::cout << Ax[i] << (i + 1 < 10 ? ", " : "");
            }
            std::cout << "\nB  (first 10): ";
            for (size_t i = 0; i < std::min<size_t>(10, B_std.size()); ++i) {
                std::cout << B_std[i] << (i + 1 < 10 ? ", " : "");
            }
            std::cout << "\n";
        }
    }

    return EXIT_SUCCESS;
}
