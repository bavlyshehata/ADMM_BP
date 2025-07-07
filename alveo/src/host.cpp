#include "xcl2.hpp"
#include <algorithm>
#include <vector>
#include <cmath>
#include <fstream>
#include <sstream>
#include <iostream>

//#define DATA_SIZE 2048

// Helper function to read CSV into a vector
std::vector<float> readCSV(const std::string& filename) {
    std::vector<float> result;
    std::ifstream file(filename);
    std::string line;
    
    while (std::getline(file, line)) {
        std::stringstream lineStream(line);
        std::string cell;
        while (std::getline(lineStream, cell, ',')) {
            // Trim whitespace
            cell.erase(std::remove_if(cell.begin(), cell.end(), ::isspace), cell.end());
            if (!cell.empty()) {
                try {
                    result.push_back(std::stof(cell));
                } catch (...) {
                    std::cerr << "Invalid float value in file " << filename << ": \"" << cell << "\"" << std::endl;
                }
            }
        }
    }
    return result;
}

std::vector<float> matrixVectorMultiply(const std::vector<float>& A, const std::vector<float>& x, int m, int n) {
    std::vector<float> result(m, 0);
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < n; ++j) {
            result[i] += A[i * n + j] * x[j];
        }
    }
    return result;
}

bool compareResults(const std::vector<float, aligned_allocator<float>>& a, const std::vector<float>& b) {
    if (a.size() != b.size()) return false;
    for (size_t i = 0; i < a.size(); ++i) {
        if (std::fabs(a[i] - b[i]) > 0.001f) return false;
    }
    return true;
}

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];
    cl_int err;
    cl::Context context;
    cl::Kernel krnl_admm;
    cl::CommandQueue q;

    // Read data from CSV
    auto matrix_A_std = readCSV("/home/bsheh002/ADMM07/alveo/src/A.csv");
    auto b_std        = readCSV("/home/bsheh002/ADMM07/alveo/src/B.csv");
    auto matrix_p_std = readCSV("/home/bsheh002/ADMM07/alveo/src/P.csv");
    auto vector_q_std = readCSV("/home/bsheh002/ADMM07/alveo/src/Q.csv");

    size_t N = vector_q_std.size();
    size_t matrix_size = matrix_p_std.size();

    if (matrix_size != N * N || matrix_A_std.size() != N * N || b_std.size() != N) {
        std::cerr << "CSV dimensions do not match inferred size N = " << N << std::endl;
        return EXIT_FAILURE;
    }

    // Validate sizes
    /*if (matrix_A_std.size() != DATA_SIZE * DATA_SIZE ||
        b_std.size() != DATA_SIZE ||
        matrix_p_std.size() != DATA_SIZE * DATA_SIZE ||
        vector_q_std.size() != DATA_SIZE) {
        std::cerr << "Error: One or more CSV files have incorrect dimensions." << std::endl;
        return EXIT_FAILURE;
    }*/

    // Convert to aligned memory for OpenCL
    std::vector<float, aligned_allocator<float>> matrix_A(matrix_A_std.begin(), matrix_A_std.end());
    std::vector<float, aligned_allocator<float>> b(b_std.begin(), b_std.end());
    std::vector<float, aligned_allocator<float>> matrix_p(matrix_p_std.begin(), matrix_p_std.end());
    std::vector<float, aligned_allocator<float>> vector_q(vector_q_std.begin(), vector_q_std.end());
    std::vector<float, aligned_allocator<float>> source_hw_results(N);

    size_t vector_size_bytes = sizeof(float) * N;

    // OPENCL HOST CODE
    auto devices = xcl::get_xil_devices();
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};

    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        cl::Program program(context, {device}, bins, NULL, &err);
        if (err == CL_SUCCESS) {
            OCL_CHECK(err, krnl_admm = cl::Kernel(program, "krnl_bp", &err));
            valid_device = true;
            break;
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exiting." << std::endl;
        return EXIT_FAILURE;
    }

    // Buffers
    OCL_CHECK(err, cl::Buffer buffer_in1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        vector_size_bytes * N, matrix_p.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_in2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY,
        vector_size_bytes, vector_q.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,
        vector_size_bytes, source_hw_results.data(), &err));

    // Set kernel arguments
    OCL_CHECK(err, err = krnl_admm.setArg(0, buffer_in1));
    OCL_CHECK(err, err = krnl_admm.setArg(1, buffer_in2));
    OCL_CHECK(err, err = krnl_admm.setArg(2, buffer_output));
    OCL_CHECK(err, err = krnl_admm.setArg(3, 0x3f800000)); // rho = 1
    OCL_CHECK(err, err = krnl_admm.setArg(4, 0x3f800000)); // alpha = 1
    OCL_CHECK(err, krnl_admm.setArg(5, static_cast<int>(N)));

    // Migrate data and run
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_in1, buffer_in2}, 0));
    q.finish();
    OCL_CHECK(err, err = q.enqueueTask(krnl_admm));
    q.finish();
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();

    // Output results
    std::cout << "Results from kernel:\n";
    for (const auto& val : source_hw_results) std::cout << val << " ";
    std::cout << std::endl;

    std::vector<float> Ax = matrixVectorMultiply(matrix_A_std, std::vector<float>(source_hw_results.begin(), source_hw_results.end()), N, N);

    std::cout << "Ax: ";
    for (const auto& val : Ax) std::cout << val << " ";
    std::cout << "\n\nb: ";
    for (const auto& val : b) std::cout << val << " ";
    std::cout << "\n\nComparing results..." << std::endl;

    if (compareResults(b, Ax)) {
        std::cout << "ADMM results match the expected results!" << std::endl;
    } else {
        std::cout << "ADMM results do not match the expected results!" << std::endl;
    }

    return 0;
}
