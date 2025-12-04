#include "./include/hello_world.cuh"
#include "./include/fileReader.hpp"
#include "./include/bp.hpp"
#include <vector>

int main(int argc, char* argv[]) {

    std::size_t N = 0;
    auto A = read_square_csv_autosize("/home/pyuva001/ADMM_BP/csv/a.csv", N);
    auto b = read_csv_vector("/home/pyuva001/ADMM_BP/csv/b.csv");
    auto P = read_square_csv_autosize("/home/pyuva001/ADMM_BP/csv/p.csv", N);
    auto q = read_csv_vector("/home/pyuva001/ADMM_BP/csv/q.csv");
    auto x = read_csv_vector("/home/pyuva001/ADMM_BP/csv/x.csv");

    std::vector<double> P_test(N * N);
    //precompute(A, P_test, b, q, N, N);

    int wrong = 0;
    // for (int i = 0; i < N*N; i++) {
    //     if (P[i] != P_test[i]) {
    //         std::cout << "CSV P = " << P[i] << " vs " << P_test[i] << std::endl;
    //         wrong++;
    //     }
    // }

    std::cout << "Wrong! #" << wrong << std::endl; 


    hello_world();

    return 0;
}