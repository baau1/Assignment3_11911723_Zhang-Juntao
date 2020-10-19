

#include <iostream>
#include <iostream>
#include <iomanip>
#include <ctime>
#include <chrono>
#include<cblas.h>
using   namespace std;
float dot_product(float* a, float* b);
int main()
{
    using namespace std::literals; // enables the usage of 24h instead of std::chrono::hours(24)
    auto now = std::chrono::system_clock::now();
    auto t_c = std::chrono::system_clock::to_time_t(now - 24h);
    float* v1 = new float[200000000];
    float* v2 = new float[200000000];
    for (int i = 0; i < 200000000; i++)
    {
        v1[i] = (float)rand() / 3;
        v2[i] = (float)rand() / 3;
    }
    auto start = std::chrono::steady_clock::now();
    cout << cblas_sdot(200000000,v1,1,v2,1);
    //cout << dot_product(v1, v2);
    auto end = std::chrono::steady_clock::now();
    std::cout
            << endl << "dot_product took "
            << std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() << "µs ≈ "
            << std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count() << "ms ≈ "
            << std::chrono::duration_cast<std::chrono::seconds>(end - start).count() << "s.\n";

    delete[]v1;
    delete[]v2;
    return 0;
}
float dot_product(float* a, float* b)
{
    float k=0;
    for (int i = 0; i < 200000000; i++)
    {
        k += a[i] * b[i];
    }
    return k;
}
