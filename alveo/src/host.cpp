#include "xcl2.hpp"
#include <algorithm>
#include <vector>

#define DATA_SIZE 8

struct gen_rand { 
    float range;
public:
    gen_rand(float r=1.0) : range(r) {}
    float operator()() { 
        return (rand()/(float)RAND_MAX) * range;
    }
};

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
    std::vector<float, aligned_allocator<float> > matrix_p {1.0e-14 * 0.0333,   1.0e-14 *-0.1047,   1.0e-14 * 0.0723,   1.0e-14 *-0.0947,   1.0e-14 *-0.0003,   1.0e-14 *-0.0457,   1.0e-14 * 0.0455,   1.0e-14 * 0.0214, 1.0e-14 *-0.1295,   1.0e-14 * 0.1554,   1.0e-14 *-0.3095,   1.0e-14 * 0.1442,   1.0e-14 *-0.0017,   1.0e-14 * 0.0938,   1.0e-14 *-0.1275,   1.0e-14 *-0.0340, 1.0e-14 * 0.1541,   1.0e-14 *-0.3044,   1.0e-14 * 0.1776,   1.0e-14 *-0.2579,   1.0e-14 *-0.0847,   1.0e-14 *-0.1227,   1.0e-14 * 0.1070,   1.0e-14 * 0.0374, 1.0e-14 *-0.1155,   1.0e-14 * 0.1168,   1.0e-14 *-0.2261,   1.0e-14 * 0.1110,   1.0e-14 * 0.0296,   1.0e-14 * 0.0512,   1.0e-14 *-0.1129,   1.0e-14 *-0.0136, 1.0e-14 * 0.0188,   1.0e-14 *-0.0004,   1.0e-14 *-0.0034,   1.0e-14 * 0.0108,   1.0e-14 *-0.0222,   1.0e-14 *-0.0092,   1.0e-14 *-0.0188,   1.0e-14 * 0.0113, 1.0e-14 *-0.0371,   1.0e-14 * 0.0801,   1.0e-14 *-0.0946,   1.0e-14 * 0.0513,   1.0e-14 *-0.0190,   1.0e-14 * 0.0222,   1.0e-14 *-0.0398,   1.0e-14 *-0.0045, 1.0e-14 * 0.0525,   1.0e-14 *-0.1119,   1.0e-14 * 0.1350, 1.0e-14 *-0.1075,   1.0e-14 *-0.0511,   1.0e-14 *-0.0551,   1.0e-14 * 0.0555,   1.0e-14 *-0.0029, 1.0e-14 * 0.0431,   1.0e-14 *-0.0204,   1.0e-14 * 0.0094,   1.0e-14 *-0.0089,   1.0e-14 * 0.0001,   1.0e-14 * 0.0178,   1.0e-14 *-0.0202,   1.0e-14 * 0.0111};
    std::vector<float, aligned_allocator<float> > vector_q{0.0000, 0.0000, 0.0000, 0.8215,-1.3848,-00000, 0.8287, 0.0000};
    std::vector<float, aligned_allocator<float> > source_hw_results(DATA_SIZE);

    // Create the test data
    // std::generate_n(matrix_p.begin(), matrix_p.end(), gen_rand());
    // std::generate_n(vector_q.begin(), vector_q.end(), gen_rand());
    
    std::cout << "Matrix P:\n";
    for (int i = 0; i < DATA_SIZE; i++){
        for(int j = 0; j < DATA_SIZE; j++){
            // matrix_p[(i*DATA_SIZE) + j] = rand()/(float)RAND_MAX;
            std::cout << matrix_p[(i*DATA_SIZE) + j] << " ";
        }
        std::cout << std::endl;
    }

    std::cout << "Vector q:\n";
    for(int i = 0; i < DATA_SIZE; i++){
        // vector_q[i] = rand()/(float)RAND_MAX;
        std::cout << vector_q[i] << " ";
    }
    std::cout << std::endl;

    for (int i = 0; i < DATA_SIZE; i++) {
        source_hw_results[i] = 0;
    }



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

    std::cout << "results:" << std::endl;
    for (int i = 0; i < DATA_SIZE; i++) {
       std::cout << source_hw_results[i] << " ";
        }
    
    std::cout << std::endl;

    return 0;
}