#include "xcl2.hpp"
#include <algorithm>
#include <vector>

// #define DATA_SIZE 8
#define DATA_SIZE 8

struct gen_rand { 
    float range;
public:
    gen_rand(float r=1.0) : range(r) {}
    float operator()() { 
        return (rand()/(float)RAND_MAX) * range;
    }
};

std::vector<float> matrixVectorMultiply(const std::vector<float>& A, const std::vector<float>& x, int m, int n) {
    std::vector<float> result(m, 0);
    for (int i = 0; i < m; ++i) {
        for (int j = 0; j < n; ++j) {
            result[i] += A[i * n + j] * x[j];
        }
    }
    return result;
}

    bool compareResults(const std::vector<float, aligned_allocator<float>>& a,
                    const std::vector<float>& b) {
    if (a.size() != b.size()) {
        return false;
    }
    for (size_t i = 0; i < a.size(); ++i) {
        if (std::fabs(a[i] - b[i]) > 0.001) { 
            return false;
        }
    }
    return true;
    }

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];
    size_t vector_size_bytes = sizeof(float) * DATA_SIZE;
    cl_int err;
    cl::Context context;
    cl::Kernel krnl_admm;
    cl::CommandQueue q;
    // Allocate Memory in Host Memory
    // When creating a buffer with user pointer (CL_MEM_USE_HOST_PTR), under the
    // hood user ptr
    // is used if it is properly aligned. when not aligned, runtime had no choice
    // but to create
    // its own host side buffer. So it is recommended to use this allocator if
    // user wish to
    // create buffer using CL_MEM_USE_HOST_PTR to align user buffer to page
    // boundary. It will
    // ensure that user buffer is used when user create Buffer/Mem object with
    // CL_MEM_USE_HOST_PTR
    // std::vector<float, aligned_allocator<float>> matrix_A {
    //    1, 2,
    //    3, 4
    // };
    std::vector<float, aligned_allocator<float>> matrix_A {
        3, 1, 7, 0, 3, 7, 6, 4,
        1, 1, 7, 9, 7, 0, 6, 5,
        2, 6, 0, 2, 6, 8, 6, 0,
        2, 6, 3, 4, 7, 4, 9, 8,
        3, 8, 7, 5, 6, 6, 6, 6,
        1, 2, 9, 4, 0, 5, 8, 8,
        0, 2, 5, 2, 9, 3, 0, 8,
        4, 5, 6, 9, 7, 8, 2, 5
    };
    std::vector<float, aligned_allocator<float> > b {157, 177, 142, 225, 216, 198, 154, 205}; //8/26
    // std::vector<float, aligned_allocator<float> > b {20, 46};


    std::vector<float, aligned_allocator<float>> matrix_p {
        -1.9984e-15, -1.2768e-15, -1.4988e-15, -6.6613e-16, 6.1062e-16, 1.4433e-15, 0.0, 4.9960e-16,
        -6.6613e-16, 4.4409e-16, 1.1102e-16, 3.3307e-16, -5.6205e-16, -1.2490e-16, 2.7756e-17, -1.5266e-16,
        -1.7764e-15, 8.7430e-16, 9.9920e-16, 0.0, -4.5797e-16, -2.7756e-17, -1.1102e-16, -9.7145e-16,
        2.2204e-15, -7.9797e-16, -6.1062e-16, 0.0, 2.9837e-16, -2.3592e-16, 1.3878e-16, 6.2450e-16,
        -1.1102e-15, 2.4286e-16, 2.7756e-16, 2.7756e-16, -2.2204e-16, 3.4694e-16, -2.7756e-17, -2.9143e-16,
        1.9984e-15, -5.5511e-16, -3.3307e-16, -2.2204e-16, 2.2204e-16, -4.4409e-16, 1.6653e-16, 1.1102e-16,
        2.2204e-16, 6.9389e-16, 1.0270e-15, -5.5511e-16, -6.9389e-17, -5.8287e-16, -2.2204e-16, -8.6042e-16,
        2.2204e-16, -1.3808e-15, -1.2768e-15, 1.1102e-16, -6.9389e-18, 6.5226e-16, 5.8287e-16, 6.6613e-16
    };
    //  std::vector<float, aligned_allocator<float>> matrix_p {
    //     -3, 1.5,
    //     1, -1.5
    // };

    std::vector<float, aligned_allocator<float> > vector_q{1,2,3,4,5,6,7,8};
    // std::vector<float, aligned_allocator<float> > vector_q{6,7};
    std::vector<float, aligned_allocator<float> > source_hw_results(DATA_SIZE);

    // OPENCL HOST CODE AREA START
    // get_xil_devices() is a utility API which will find the xilinx
    // platforms and will return list of devices connected to Xilinx platform
    auto devices = xcl::get_xil_devices();
    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, NULL, NULL, NULL, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, NULL, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_admm = cl::Kernel(program, "krnl_bp", &err));
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    // Allocate Buffer in Global Memory
    // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and
    // Device-to-host communication
    OCL_CHECK(err, cl::Buffer buffer_in1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes * DATA_SIZE,
                                         matrix_p.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_in2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                         vector_q.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, vector_size_bytes,
                                            source_hw_results.data(), &err));

    int size = DATA_SIZE;
    OCL_CHECK(err, err = krnl_admm.setArg(0, buffer_in1));
    OCL_CHECK(err, err = krnl_admm.setArg(1, buffer_in2));
    OCL_CHECK(err, err = krnl_admm.setArg(2, buffer_output));
    OCL_CHECK(err, err = krnl_admm.setArg(3, /*rho=1*/0x3f800000));
    OCL_CHECK(err, err = krnl_admm.setArg(4, /*alpha=1*/0x3f800000));

    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_in1, buffer_in2}, 0 /* 0 means from host*/));

    // Launch the Kernel
    // For HLS kernels global and local size is always (1,1,1). So, it is
    // recommended
    // to always use enqueueTask() for invoking HLS kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_admm));

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();
    // OPENCL HOST CODE AREA END

    std::cout << "results from kernel:" << std::endl;
    for (int i = 0; i < DATA_SIZE; i++) {
       std::cout << source_hw_results[i] << " ";
        }
    std::cout << std::endl;
    std::vector<float> matrix_A_std(matrix_A.begin(), matrix_A.end());
    std::vector<float> source_hw_results_std(source_hw_results.begin(), source_hw_results.end());
    std::vector<float> Ax = matrixVectorMultiply(matrix_A_std, source_hw_results_std, 8, 8);

    // Print Ax
    std::cout << "Ax: ";
    for (const auto& val : Ax) {
        std::cout << val << " ";
    }
    std::cout << std::endl;

    // Compare Ax to b
    std::cout << "b: ";
    for (const auto& val : b) {
        std::cout << val << " ";
    }
    std::cout << std::endl;

    // Compare the results from ADMM and expected vector b
    std::cout << "Comparing results..." << std::endl;
    if (compareResults(b, Ax)) {
        std::cout << "ADMM results match the expected results!" << std::endl;
    } else {
        std::cout << "ADMM results do not match the expected results!" << std::endl;
    }
    
    return 0;
}