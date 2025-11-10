// #include "xcl2.hpp"
// #include <algorithm>
// #include <chrono>
// #include <cmath>
// #include <fstream>
// #include <iostream>
// #include <sstream>
// #include <string>
// #include <vector>

// // ---------- Small timing helper ----------
// template <class Clock, class Dur>
// static inline long long ms_between(const std::chrono::time_point<Clock, Dur>& a,
//                                    const std::chrono::time_point<Clock, Dur>& b) {
//     return std::chrono::duration_cast<std::chrono::milliseconds>(b - a).count();
// }

// // ---------- Config ----------
// static constexpr int CHUNK_SIZE = 128; // must be <= kernel MAX_CHUNK

// // ---------- CSV helpers ----------
// static std::vector<float> readCSV(const std::string &filename) {
//     std::vector<float> result;
//     std::ifstream file(filename);
//     if (!file) return result; // empty if missing
//     std::string line, cell;
//     while (std::getline(file, line)) {
//         std::stringstream ss(line);
//         while (std::getline(ss, cell, ',')) {
//             // trim spaces
//             cell.erase(std::remove_if(cell.begin(), cell.end(), ::isspace), cell.end());
//             if (!cell.empty()) {
//                 try { result.push_back(std::stof(cell)); }
//                 catch (...) {
//                     std::cerr << "Warning: non-float in " << filename << ": \"" << cell << "\"\n";
//                 }
//             }
//         }
//     }
//     return result;
// }

// static std::vector<float> matVec(const std::vector<float> &A, const std::vector<float> &x, int N) {
//     std::vector<float> y(N, 0.0f);
//     for (int i = 0; i < N; ++i) {
//         float acc = 0.0f;
//         const float *row = &A[(size_t)i * N];
//         for (int j = 0; j < N; ++j) acc += row[j] * x[j];
//         y[i] = acc;
//     }
//     return y;
// }

// static bool approxEqual(const std::vector<float> &a, const std::vector<float> &b, float tol = 1e-3f) {
//     if (a.size() != b.size()) return false;
//     for (size_t i = 0; i < a.size(); ++i) {
//         if (std::fabs(a[i] - b[i]) > tol) return false;
//     }
//     return true;
// }

// int main(int argc, char **argv) {
//     if (argc != 2) {
//         std::cout << "Usage: " << argv[0] << " <XCLBIN File>\n";
//         return EXIT_FAILURE;
//     }
//     std::string xclbin_path = argv[1];
//     cl_int err = CL_SUCCESS;

//     // ---------- Load CSVs ----------
//     // Required: src/P.csv (N x N), src/Q.csv (N)
//     // Optional: src/A.csv (N x N), src/B.csv (N) for Ax≈b check
//     auto P_std = readCSV("src/P.csv");
//     auto Q_std = readCSV("src/Q.csv");
//     auto A_std = readCSV("src/A.csv"); // optional
//     auto B_std = readCSV("src/B.csv"); // optional

//     if (Q_std.empty() || P_std.empty()) {
//         std::cerr << "Error: Missing or empty src/P.csv or src/Q.csv\n";
//         return EXIT_FAILURE;
//     }

//     size_t N = Q_std.size();
//     if (P_std.size() != N * N) {
//         std::cerr << "Error: P.csv size (" << P_std.size()
//                   << ") != N*N (" << (N * N) << "), N inferred from Q.csv (" << N << ")\n";
//         return EXIT_FAILURE;
//     }
//     if ((!A_std.empty() && A_std.size() != N * N) || (!B_std.empty() && B_std.size() != N)) {
//         std::cerr << "Warning: A.csv/B.csv dimensions don’t match N — skipping Ax≈b check.\n";
//         A_std.clear(); B_std.clear();
//     }

//     if (CHUNK_SIZE <= 0) {
//         std::cerr << "Error: CHUNK_SIZE must be positive.\n";
//         return EXIT_FAILURE;
//     }

//     // ---------- Aligned host buffers ----------
//     // P, Q inputs; X output
//     std::vector<float, aligned_allocator<float>> P(P_std.begin(), P_std.end());
//     std::vector<float, aligned_allocator<float>> Q(Q_std.begin(), Q_std.end());
//     std::vector<float, aligned_allocator<float>> X(N, 0.0f);

//     // Scalars
//     float rho   = 1.0f;
//     float alpha = 1.0f;
//     int   Ni    = static_cast<int>(N);
//     int   chunk = CHUNK_SIZE;

//     // ---------- OpenCL setup ----------
//     auto devices = xcl::get_xil_devices();
//     auto fileBuf = xcl::read_binary_file(xclbin_path);
//     cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

//     cl::Context context;
//     cl::CommandQueue q;
//     cl::Kernel kernel;
//     bool programmed = false;

//     std::cout << "Programming FPGA..." << std::endl; 

//     for (unsigned i = 0; i < devices.size(); ++i) {
//         auto device = devices[i];
//         OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
//         OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
//         OCL_CHECK(err, cl::Program program(context, {device}, bins, NULL, &err));
//         if (err == CL_SUCCESS) {
//             OCL_CHECK(err, kernel = cl::Kernel(program, "krnl_bp", &err));
//             programmed = true;
//             break;
//         }
//     }
//     if (!programmed) {
//         std::cerr << "Error: failed to program any device.\n";
//         return EXIT_FAILURE;
//     }
//     std::cout << "Finished programming FPGA." << std::endl; 

//     // ---------- Create device buffers ----------
//     OCL_CHECK(err, cl::Buffer dP(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, sizeof(float) * P.size(), P.data(), &err));
//     OCL_CHECK(err, cl::Buffer dQ(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, sizeof(float) * Q.size(), Q.data(), &err));
//     OCL_CHECK(err, cl::Buffer dX(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, sizeof(float) * X.size(), X.data(), &err));


//     // ---------- Set kernel args (order MUST match kernel) ----------
//     OCL_CHECK(err, err = kernel.setArg(0, dP));     // 0: mat_p
//     OCL_CHECK(err, err = kernel.setArg(1, dQ));     // 1: vec_q
//     OCL_CHECK(err, err = kernel.setArg(2, dX));     // 2: out
//     OCL_CHECK(err, err = kernel.setArg(3, rho));    // 3: rho (float, 4 bytes)
//     OCL_CHECK(err, err = kernel.setArg(4, alpha));  // 4: alpha (float, 4 bytes)
//     OCL_CHECK(err, err = kernel.setArg(5, Ni));     // 5: N (int, 4 bytes)
//     OCL_CHECK(err, err = kernel.setArg(6, chunk));  // 6: chunk_size (int, 4 bytes)

//     // ---------- H2D ----------
//     auto t0 = std::chrono::high_resolution_clock::now();
//     OCL_CHECK(err, err = q.enqueueMigrateMemObjects({dP,dQ}, 0));
//     OCL_CHECK(err, err = q.finish());
//     auto t1 = std::chrono::high_resolution_clock::now();

//     // ---------- Run ----------
//     auto t2 = std::chrono::high_resolution_clock::now();
//     OCL_CHECK(err, err = q.enqueueTask(kernel));
//     OCL_CHECK(err, err = q.finish());
//     auto t3 = std::chrono::high_resolution_clock::now();

//     // ---------- D2H ----------
//     auto t4 = std::chrono::high_resolution_clock::now();
//     OCL_CHECK(err, err = q.enqueueMigrateMemObjects({dX}, CL_MIGRATE_MEM_OBJECT_HOST));
//     OCL_CHECK(err, err = q.finish());
//     auto t5 = std::chrono::high_resolution_clock::now();

//     // ---------- Timings ----------
//     std::cout << "Migrate to device: " << ms_between(t0, t1) << " ms\n";
//     std::cout << "Kernel execution : " << ms_between(t2, t3) << " ms\n";
//     std::cout << "Migrate to host  : " << ms_between(t4, t5) << " ms\n";

//     // ---------- Output ----------
//     std::cout << "x (first 100): ";
//     for (size_t i = 0; i < std::min<size_t>(100, X.size()); ++i) {
//         std::cout << X[i] << (i + 1 < 100 ? ", " : "");
//     }
//     if (X.size() > 100) std::cout << " ...";
//     std::cout << "\n";
//     return EXIT_SUCCESS;
// }

// host.cpp
// Build example:
// g++ -std=c++17 host.cpp -o admm -lOpenCL -I$XILINX_XRT/include -L$XILINX_XRT/lib -lOpenCL
// Run example:
// ./admm build_dir.hw.xilinx_u280_gen3x16_xdma_1_202211_1/admm.xclbin

#include "xcl2.hpp"
#include <algorithm>
#include <chrono>
#include <cmath>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

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
    auto P_std = readCSV("src/P.csv");
    auto Q_std = readCSV("src/Q.csv");
    auto A_std = readCSV("src/A.csv"); // optional
    auto B_std = readCSV("src/B.csv"); // optional

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

    // ---------- Aligned host buffers ----------
    std::vector<float, aligned_allocator<float>> P(P_std.begin(), P_std.end());
    std::vector<float, aligned_allocator<float>> Q(Q_std.begin(), Q_std.end());
    std::vector<float, aligned_allocator<float>> X(N, 0.0f);

    // ADMM state (start from zeros)
    std::vector<float, aligned_allocator<float>> Z(N, 0.0f);
    std::vector<float, aligned_allocator<float>> U(N, 0.0f);
    std::vector<float, aligned_allocator<float>> ZOLD(N, 0.0f);

    // Scalars
    float rho   = 1.0f;
    float alpha = 1.0f;
    int   Ni    = static_cast<int>(N);

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
    OCL_CHECK(err, cl::Buffer dP(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                 sizeof(float) * P.size(), P.data(), &err));
    OCL_CHECK(err, cl::Buffer dQ(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
                                 sizeof(float) * Q.size(), Q.data(), &err));
    OCL_CHECK(err, cl::Buffer dX(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
                                 sizeof(float) * X.size(), X.data(), &err));
    OCL_CHECK(err, cl::Buffer dZ(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                 sizeof(float) * Z.size(), Z.data(), &err));
    OCL_CHECK(err, cl::Buffer dU(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                 sizeof(float) * U.size(), U.data(), &err));
    OCL_CHECK(err, cl::Buffer dZOLD(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                    sizeof(float) * ZOLD.size(), ZOLD.data(), &err));

    // ---------- Set kernel args (order MUST match kernel) ----------
    // void krnl_bp(const float* mat_p, const float* vec_q, float* x_out,
    //              float* z_g, float* u_g, float* zold_g, float rho, float alpha, int N)
    OCL_CHECK(err, err = kernel.setArg(0, dP));     // mat_p
    OCL_CHECK(err, err = kernel.setArg(1, dQ));     // vec_q
    OCL_CHECK(err, err = kernel.setArg(2, dX));     // x_out
    OCL_CHECK(err, err = kernel.setArg(3, dZ));     // z_g
    OCL_CHECK(err, err = kernel.setArg(4, dU));     // u_g
    OCL_CHECK(err, err = kernel.setArg(5, dZOLD));  // zold_g
    OCL_CHECK(err, err = kernel.setArg(6, rho));    // rho
    OCL_CHECK(err, err = kernel.setArg(7, alpha));  // alpha
    OCL_CHECK(err, err = kernel.setArg(8, Ni));     // N
    bool do_termination = true;
    OCL_CHECK(err, err = kernel.setArg(9, do_termination));
    int MAX_ITER = 10;
    OCL_CHECK(err, err = kernel.setArg(10, MAX_ITER));

    // ---------- H2D ----------
    auto t0 = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({dP, dQ, dZ, dU, dZOLD}, 0));
    OCL_CHECK(err, err = q.finish());
    auto t1 = std::chrono::high_resolution_clock::now();

    // ---------- Run ----------
    auto t2 = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueTask(kernel));
    OCL_CHECK(err, err = q.finish());
    auto t3 = std::chrono::high_resolution_clock::now();

    // ---------- D2H ----------
    auto t4 = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({dX}, CL_MIGRATE_MEM_OBJECT_HOST));
    OCL_CHECK(err, err = q.finish());
    auto t5 = std::chrono::high_resolution_clock::now();

    // ---------- Timings ----------
    std::cout << "Migrate to device: " << ms_between(t0, t1)/(1000000.00) << " ms\n";
    std::cout << "Kernel execution : " << ms_between(t2, t3)/(1000000.00) << " ms\n";
    std::cout << "Migrate to host  : " << ms_between(t4, t5)/(1000000.00) << " ms\n";

    // ---------- Output ----------
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
