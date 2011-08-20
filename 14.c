#include <stdio.h>

int main()
{
    int longest = 0;
    long i;
    long count = 0;

    for (i = 1; i < 2000000; i++)
    {
        count = 0;
        calculateChain(i, &count);
        if (count > longest)
        {
            longest = count;
            printf("%ld: %ld \n", i, count); 
        }
        
    }
}

int calculateChain(long n, long* count)
{
    ++*count;

    if (n == 1)
    {
        return 1;
    }
    else if ((n % 2) == 0)
    {
        return calculateChain(n/2, count);
    }
    else
    {
        return calculateChain((3*n)+1, count);
    }
}
