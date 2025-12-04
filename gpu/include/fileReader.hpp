#include <vector>
#include <string>
#include <cstddef> // for std::size_t

// Reads a square CSV matrix with known dimension N.
// - Returns a flat row-major vector of size N*N.
// - Throws std::runtime_error on I/O/format errors.
std::vector<double> read_square_csv(const std::string &path, std::size_t N);

// Reads a square CSV matrix with unknown dimension.
// - Detects N (via outN), validates square shape, and returns row-major data.
// - Throws std::runtime_error on I/O/format errors.
std::vector<double> read_square_csv_autosize(const std::string &path, std::size_t &outN);

// Convenience: returns a 2D vector layout (M[r][c]) for a known N.
// - Internally calls read_square_csv.
std::vector<std::vector<double>> read_square_csv_2d(const std::string &path, std::size_t N);

// Reads a 1-D vector from CSV.
// - Accepts either a single row ("1 x N") or a single column ("N x 1").
// - Returns elements in order encountered.
// - Throws std::runtime_error on I/O/format errors.
std::vector<double> read_csv_vector(const std::string &path);
