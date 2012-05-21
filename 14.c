#include <stdio.h>

int main()
{
    int longest = 0;
    long i;
    long count = 0;

    for (i = 1; i < 1000000; i++)
    {
        count = calculateChain(i);
        if (count > longest)
        {
            longest = count;
            printf("%ld: %ld \n", i, count); 
        }
        
    }
}

int calculateChain(long n)
{
    long count = 0;

    while (n != 1) {
        if (n%2 == 0) {
            n = n/2;
        } else {
            n = 3*n+1;
        }
        count++;
    }
    
    return count + 1;
}
