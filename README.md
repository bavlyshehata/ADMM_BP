# FPGA-Accelerated ADMM Distributed utilizing RDMA
  Authors:
  - Bavly Shehata [bsheh002@ucr.edu] (University of California, Riverside)
  - Prithviraj Yuvaraj [pyuva001@ucr.edu] (University of California, Riverside)
  
  Supervisor:
  - Professor Philip Brisk [philip.brisk@ucr.edu] (University of California, Riverside)

Basis Pursuit, solved via the Alternating Direction Method of Multipliers (ADMM), is an optimization problem widely used in sparse signal recovery, compressed sensing, and optimization problems. However, the iterative matrix–vector multiplications and convergence checks make it computationally intensive.

Our project introduces an FPGA-accelerated solution using the AMD Alveo U280 for efficient ADMM-based Basis Pursuit. Our approach focuses on chunked processing of large problem sizes, parallelizing matrix–vector operations across multiple HBM memory banks, and optimizing kernel dataflow for high throughput. Future extensions of this project will include RDMA (Remote Direct Memory Access) to enable distributed multi-FPGA scaling.

# Key Highlights
  - Chunked ADMM Solver Implementation: We implement a kernel (krnl_bp) capable of iterative ADMM updates on sub-blocks of the data. This design allows the solver to handle matrices larger than on-chip memory by streaming chunks sequentially.
  - Optimized Memory-Mapped Buffers: Host buffers are allocated with alignment and partitioning across U280 HBM channels, improving bandwidth utilization for chunked matrix operations.
  - Performance Improvements: By using HLS pragmas such as pipelining, dataflow, and array partitioning, the chunked kernels show significant reductions in per-iteration latency.

# How to Run
  ## Prerequisites
  Ensure that the following tools are installed:
  - Xilinx Vitis 2023.2
  - make
  - Platform file: xilinx_u280_xdma_201920_3

# Steps
  - Clone the Project Repository
     ```
     git clone https://github.com/bavlyshehata/ADMM_BP/
     cd ADMM_BP
  - Navigate to the alveo folder
    ```
    cd alveo
  - Set Environment Variables
    In the Makefile, ensure the following are set:
      Target : hw or hw_emu
      Platform : xilinx_u280_xdma_201920_3
  - Build xclbin and run
    ```
    make run TARGET=hw DEVICE=/opt/xilinx/platforms/xilinx_u280_gen3x16_xdma_1_202211_1/xilinx_u280_gen3x16_xdma_1_202211_1.xpfm

# Implementation Details
  ### Chunked Processing
  - Input matrices are partitioned row-wise into configurable chunk_size blocks.
  - Each FPGA kernel processes a chunk sequentially, streams partial results, and merges them on host memory, which allows scaling to problem sizes larger than HBM capacity.
    
  ### Iterative ADMM Updates
  - Kernels compute updates of the form:
  $$x^{k+1} = \arg \min_x \ \tfrac{1}{2}\|Ax - b\|^2 + 2\rho \|x - z^k + u^k\|^2 $$
  - Partial updates are streamed per chunk and combined to update the global z and u.
  ### Multi-Bank Memory Mapping:
  - Data is mapped across multiple HBM banks (gmem0–gmem13), ensuring parallel access for vector operations.

## Implementation of Basis Pursuit algorithm based on ADMM. 

The steps to execute the algorithm are as follows:

1.1) x = P(z-u) + Q

1.2) x^ = alpha * x + (1 - alpha) * z

2) z = max(0, x^ + u - 1/rho) - max(0, -x^ - u - 1/rho)

3) u = u + (x^ - z)

## Hardware Architecture
<div align="center">
  <img width="1041" height="1330" alt="output-onlinepngtools (1)" src="https://github.com/user-attachments/assets/4efeb79f-1d67-4b04-b0c1-a8e630d4ddce" />
</div>

## Performance
<img width="599" height="367" alt="image" src="https://github.com/user-attachments/assets/f8c8e8a7-bd64-423e-b84a-19f2259dcadf" />

| Size    | N     | Migrate to Device (ms) | Kernel Execution (ms) | Total    |
|---------|-------|-------------------------|-----------------------|----------|
| 38MB    | 2048  | 9                       | 5818                  | 5827     |
| 152MB   | 4096  | 17                      | 23269                 | 23286    |
| 608MB   | 8192  | 43                      | 93608                 | 93651    |
| 2.38GB  | 16384 | 145                     | 372252                | 372397   |
| 22.91GB | 32768 | 535                     | 1488970               | 1489505  |

*Note*: The transfer from migrate to host is negligible.


## Future Work
  - RDMA: Extend the solver to multi-FPGA setups using RDMA for low-latency inter-node communication.
  - Termination Check: By implementing a termination check, we are able to stop the iteration as it reaches convergence. This results in a more optimized algorithm that adapts to the specific matrices and hyper-parameters (such as rho), while also cutting down on wasted iterations that may affect our performance.

## Citations
- Boyd, S., Parikh, N., Chu, E., Peleato, B., & Eckstein, J. (2011).  
  *Distributed Optimization and Statistical Learning via the Alternating Direction Method of Multipliers.*  
  Foundations and Trends® in Machine Learning, 3(1), 1–122.  
  [https://web.stanford.edu/~boyd/papers/admm_distr_stats.html]

- MATLAB implementation of ADMM for Basis Pursuit:  
  [https://web.stanford.edu/~boyd/papers/admm/basis_pursuit/basis_pursuit.html]
