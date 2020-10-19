#include <iostream>
#include <pthread.h>
#include <iomanip>
#include <ctime>
#include <chrono>
#include<windows.h>
using namespace std;
HANDLE cout_mutex;
float ans[5];
int count=0;
float *v1= new float[400000000];
void*  dot_product(void* args);
void* dot_product(void* args)
{
    count++;
    if(count==1)
    {
        cout_mutex = CreateMutex(NULL, FALSE, NULL);
    }

    for(int i=40000000*count;i<40000000*(1+count);i++)
    {
        ans[count-1]+=v1[i]*v1[i+200000000];
    }
    if(count==5)
    {
        ReleaseMutex(cout_mutex);
    }
}

int main()
{
    using namespace std::literals; // enables the usage of 24h instead of std::chrono::hours(24)
    auto now = std::chrono::system_clock::now();
    for(int i=0;i<400000000;i++)
    {
        v1[i]=(float)rand()/123;
    }
    pthread_t tids[5];
    auto start = std::chrono::steady_clock::now();
    for(int i = 0; i < 5; ++i)
    {
        int ret = pthread_create(&tids[i], NULL, dot_product, NULL);
        if (ret != 0)
        {
            cout << "pthread_create error: error_code=" << ret << endl;
        }
    }

    auto end = std::chrono::steady_clock::now();
    WaitForSingleObject(cout_mutex, INFINITE);

    float ans1=ans[0]+ans[1]+ans[2]+ans[3]+ans[4];
    cout<<ans1;
    std::cout
            << endl<< "dot_product took "
            << std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() << "µs ≈ "
            << std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count() << "ms ≈ "
            << std::chrono::duration_cast<std::chrono::seconds>(end - start).count() << "s.\n";
    free(v1);
}