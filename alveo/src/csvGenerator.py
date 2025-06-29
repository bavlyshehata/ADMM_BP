import numpy as np

def generate_matrices(n, seed=None):
    if seed is not None:
        np.random.seed(seed)

    # Generate A (N x N) and b (N)
    A = np.random.randn(n, n)
    b = np.random.randn(n)

    # Compute AAt = A * A.T
    AAt = A @ A.T
    AAt_inv = np.linalg.inv(AAt)

    # Compute P = I - A.T @ AAt_inv @ A
    I = np.eye(n)
    P = I - A.T @ AAt_inv @ A

    # Compute q = A.T @ AAt_inv @ b
    q = A.T @ AAt_inv @ b

    return A, b, P, q

def save_with_trailing_commas(matrix, filename):
    with open(filename, "w") as f:
        if matrix.ndim == 1:
            for val in matrix:
                f.write(f"{val},\n")
        else:
            for row in matrix:
                f.write(",".join(f"{val}" for val in row) + ",\n")

if __name__ == "__main__":
    N = 2048  # Use 4096 only if you have enough RAM and time
    A, B, P, Q = generate_matrices(N, seed=42)

    save_with_trailing_commas(A, "A.csv")
    save_with_trailing_commas(B, "B.csv")
    save_with_trailing_commas(P, "P.csv")
    save_with_trailing_commas(Q, "Q.csv")

    print("Matrices saved with trailing commas.")
