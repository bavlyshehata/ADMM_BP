#include <vector>
#include <string>
#include <fstream>
#include <sstream>
#include <stdexcept>
#include <cstdlib>
#include <cctype>

// Trim helper (left & right)
static inline void trim(std::string &s) {
    size_t b = 0, e = s.size();
    while (b < e && std::isspace(static_cast<unsigned char>(s[b]))) ++b;
    while (e > b && std::isspace(static_cast<unsigned char>(s[e-1]))) --e;
    s.assign(s, b, e - b);
}

// Parse a CSV line into doubles (no quoted fields assumed)
static inline void parse_csv_line(const std::string &line, std::vector<double> &out) {
    out.clear();
    std::string field;
    std::istringstream ss(line);
    while (std::getline(ss, field, ',')) {
        trim(field);
        if (field.empty()) throw std::runtime_error("Empty field in CSV.");
        char *end = nullptr;
        double v = std::strtod(field.c_str(), &end);
        if (end == field.c_str() || *end != '\0')
            throw std::runtime_error("Non-numeric field in CSV: \"" + field + "\"");
        out.push_back(v);
    }
    if (out.empty()) throw std::runtime_error("No fields parsed from line.");
}

// Fast path: known N. Returns row-major vector of size N*N.
std::vector<double> read_square_csv(const std::string &path, std::size_t N) {
    if (N == 0) throw std::invalid_argument("N must be > 0.");
    std::ifstream f(path);
    if (!f) throw std::runtime_error("Failed to open file: " + path);

    std::vector<double> data;
    data.reserve(N * N);

    std::string line;
    std::vector<double> rowbuf;
    std::size_t row = 0;

    while (std::getline(f, line)) {
        // Skip completely blank lines if any
        std::string tmp = line; trim(tmp);
        if (tmp.empty()) continue;

        parse_csv_line(line, rowbuf);
        if (rowbuf.size() != N) {
            throw std::runtime_error("Row " + std::to_string(row) +
                                     " has " + std::to_string(rowbuf.size()) +
                                     " columns; expected " + std::to_string(N) + ".");
        }
        data.insert(data.end(), rowbuf.begin(), rowbuf.end());
        if (++row > N) {
            throw std::runtime_error("File has more than N rows.");
        }
    }

    if (row != N) {
        throw std::runtime_error("File has " + std::to_string(row) +
                                 " rows; expected " + std::to_string(N) + ".");
    }

    return data; // size = N*N
}

// Auto-detect N, validate square, then return row-major vector.
// Outputs detected N via outN.
std::vector<double> read_square_csv_autosize(const std::string &path, std::size_t &outN) {
    std::ifstream f(path);
    if (!f) throw std::runtime_error("Failed to open file: " + path);

    std::vector<std::vector<double>> rows;
    std::string line;
    std::vector<double> rowbuf;

    std::size_t cols = 0;
    while (std::getline(f, line)) {
        std::string tmp = line; trim(tmp);
        if (tmp.empty()) continue; // skip blank lines
        parse_csv_line(line, rowbuf);
        if (cols == 0) cols = rowbuf.size();
        else if (rowbuf.size() != cols) {
            throw std::runtime_error("Inconsistent row width: got " +
                                     std::to_string(rowbuf.size()) + ", expected " +
                                     std::to_string(cols) + ".");
        }
        rows.push_back(rowbuf);
    }

    if (rows.empty())
        throw std::runtime_error("CSV is empty.");

    if (rows.size() != cols) {
        throw std::runtime_error("Matrix is not square: rows=" +
                                 std::to_string(rows.size()) + ", cols=" +
                                 std::to_string(cols) + ".");
    }

    outN = cols;
    std::vector<double> data;
    data.reserve(outN * outN);
    for (const auto &r : rows) data.insert(data.end(), r.begin(), r.end());
    return data;
}

// (Optional) Build a 2D vector if you prefer that layout:
std::vector<std::vector<double>> read_square_csv_2d(const std::string &path, std::size_t N) {
    std::vector<double> flat = read_square_csv(path, N);
    std::vector<std::vector<double>> M(N, std::vector<double>(N));
    for (std::size_t i = 0; i < N; ++i) {
        std::copy(flat.begin() + i*N, flat.begin() + (i+1)*N, M[i].begin());
    }
    return M;
}

// Read CSV vector (either single row or single column)
std::vector<double> read_csv_vector(const std::string &path) {
    std::ifstream f(path);
    if (!f) throw std::runtime_error("Failed to open file: " + path);

    std::vector<double> result;
    std::string line;
    std::vector<double> rowbuf;

    bool multipleRows = false;
    size_t rowCount = 0;

    while (std::getline(f, line)) {
        std::string tmp = line; trim(tmp);
        if (tmp.empty()) continue;

        parse_csv_line(line, rowbuf);

        if (rowbuf.size() == 1) {
            // Column vector mode: 1 number per row
            result.push_back(rowbuf[0]);
        } else {
            if (rowCount > 0)
                throw std::runtime_error("File contains multiple rows with more than 1 column; not a 1D vector.");
            // Row vector mode: all numbers in the first row
            result = rowbuf;
            multipleRows = false;
            break;
        }
        ++rowCount;
    }

    return result;
}
