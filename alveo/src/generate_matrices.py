# # Creates A and b and computes p and q

# import numpy as np

# def generate_matrices(n, seed=None):
#     if seed is not None:
#         np.random.seed(seed)

#     # Generate A (N x N) and b (N)
#     A = np.random.randn(n, n)
#     b = np.random.randn(n)

#     # Compute AAt = A * A.T
#     AAt = A @ A.T
#     AAt_inv = np.linalg.inv(AAt)

#     # Compute P = I - A.T @ AAt_inv @ A
#     I = np.eye(n)
#     P = I - A.T @ AAt_inv @ A

#     # Compute q = A.T @ AAt_inv @ b
#     q = A.T @ AAt_inv @ b

#     return A, b, P, q

# def save_with_trailing_commas(matrix, filename):
#     with open(filename, "w") as f:
#         if matrix.ndim == 1:
#             for val in matrix:
#                 f.write(f"{val},\n")
#         else:
#             for row in matrix:
#                 f.write(",".join(f"{val}" for val in row) + ",\n")

# if __name__ == "__main__":
#     N = 2048  # Use 4096 only if you have enough RAM and time
#     A, B, P, Q = generate_matrices(N, seed=42)

#     save_with_trailing_commas(A, "A2.csv")
#     save_with_trailing_commas(B, "B2.csv")
#     save_with_trailing_commas(P, "P2.csv")
#     save_with_trailing_commas(Q, "Q2.csv")

#     print("Matrices saved with trailing commas.")

# import numpy as np
# from scipy.linalg import solve

# def compute_q():
#     A = np.load("A.npy").astype(np.float32)  # shape: (N, N)
#     b = np.load("B.npy").astype(np.float32)  # shape: (N,)
    
#     print("Computing A @ A.T ...")
#     AAt = A @ A.T                             # shape: (N, N)
    
#     print("Solving AAt⁻¹ @ b ...")
#     x = solve(AAt, b, assume_a='sym')        # shape: (N,)
    
#     print("Computing q = A.T @ (AAt⁻¹ @ b) ...")
#     q = A.T @ x                               # shape: (N,)
    
#     np.save("Q.npy", q.astype(np.float32))
#     print("Saved Q.npy")

# if __name__ == "__main__":
#     compute_q()


#computes p given A
# import numpy as np
# from scipy.linalg import solve

# def compute_p_matrix():
#     # Generate A (N x N)
#     A = np.load("A.npy").astype(np.float32)  # shape: (N, N)

#     # Compute AAt and its inverse
#     AAt = A @ A.T
#     AAt_inv = np.linalg.inv(AAt)

#     # Compute P = I - A.T @ AAt_inv @ A
#     I = np.eye(n)
#     P = I - A.T @ AAt_inv @ A

#     np.save("P.npy", P.astype(np.float32))
#     print("P matrix saved as P.npy")

# if __name__ == "__main__":
#     compute_p_matrix()

# import numpy as np

# def generate_and_save_A_b(n, seed=None):
#     if seed is not None:
#         np.random.seed(seed)

#     # Generate A (N x N) and b (N) as float32
#     A = np.random.randn(n, n).astype(np.float32)
#     b = np.random.randn(n).astype(np.float32)

#     # Save A and b as .npy
#     np.save("P.npy", A.astype(np.float32))
#     np.save("Q.npy", b.astype(np.float32))

#     print(f"Saved A.npy and B.npy with shape {A.shape} and {b.shape}")

# if __name__ == "__main__":
#     N = 8192 # Change size as needed
#     generate_and_save_A_b(N)

# import numpy as np
# import sys

# def generate_and_save_A_b(n, seed=None):
#     if seed is not None:
#         np.random.seed(seed)

#     # Generate A (N x N) and b (N) as float32
#     A = np.random.randn(n, n).astype(np.float32)
#     b = np.random.randn(n).astype(np.float32)

#     # Save A and b as .npy
#     np.save("P.npy", A)
#     np.save("Q.npy", b)

#     print(f"Saved P.npy and Q.npy with shape {A.shape} and {b.shape}")

# if __name__ == "__main__":
#     if len(sys.argv) < 2:
#         print("Usage: python generate_matrices.py <N>")
#         sys.exit(1)
#     N = int(sys.argv[1])
#     generate_and_save_A_b(N)

import numpy as np

def generate_matrices(n, seed=None):
    if seed is not None:
        np.random.seed(seed)

    # Generate A (N x N) and b (N) as float32
    A = np.random.randn(n, n).astype(np.float32)
    b = np.random.randn(n).astype(np.float32)

    # Compute AAt = A * A.T
    AAt = (A @ A.T).astype(np.float32)
    AAt_inv = np.linalg.inv(AAt).astype(np.float32)

    # Compute P = I - A.T @ AAt_inv @ A
    I = np.eye(n, dtype=np.float32)
    P = (I - A.T @ AAt_inv @ A).astype(np.float32)

    # Compute q = A.T @ AAt_inv @ b
    q = (A.T @ AAt_inv @ b).astype(np.float32)

    return A, b, P, q

def save_with_trailing_commas(matrix, filename):
    with open(filename, "w") as f:
        if matrix.ndim == 1:
            for val in matrix:
                f.write(f"{val:.6f},\n")  # 6 decimal places
        else:
            for row in matrix:
                f.write(",".join(f"{val:.6f}" for val in row) + ",\n")

if __name__ == "__main__":
    N = 2048  # Use 4096 only if you have enough RAM and time
    A, B, P, Q = generate_matrices(N, seed=42)

    save_with_trailing_commas(A, "A.csv")
    save_with_trailing_commas(B, "B.csv")
    save_with_trailing_commas(P, "P.csv")
    save_with_trailing_commas(Q, "Q.csv")

    print("Matrices saved as float32 with trailing commas.")