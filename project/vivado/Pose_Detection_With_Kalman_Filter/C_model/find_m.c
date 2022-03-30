#include<stdio.h>
#include<stdlib.h>
#include <stdint.h>

int main()
{
    int n = 41;
    uint64_t t = 2;
    for (size_t k = 1; k < 100; k++)
    {
        // if ((t-1)%n == 0) {
            // printf("k: %u | 2^k-1: %llu | m: %d", k, t-1, t/n);
        //    break;
        //}
        printf("k = %d: %lld\n", k, t);
        t = t*2;
    }
    

    return 0;
}