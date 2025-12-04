cmake_minimum_required(VERSION 3.22)

project(admm-bp-gpu LANGUAGES CXX CUDA VERSION 12.2)

find_package(CUDAToolkit REQUIRED)
add_executable(admm-bp-gpu 
                main.cpp 
                src/hello_world.cu
                src/fileReader.cpp
                src/bp.cu
                )


set_target_properties(admm-bp-gpu PROPERTIES CUDA_ARCHITECTURES "72;75")

include_directories(include)
include_directories(${CUDA_INCLUDE_DIRS})
target_link_libraries(admm-bp-gpu
    PRIVATE
        CUDA::cublas
        CUDA::cusolver
        CUDA::cudart
)
    
