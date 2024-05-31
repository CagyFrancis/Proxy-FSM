#include <stdlib.h>

int *foo(int *p)
{
    return p;
}

int main()
{
    int *x, *y;
    int *r1, *r2;
    int **p = &x;

    x = (int *)malloc(sizeof(int));
    r1 = foo(x);
    y = r1; // x y
    
    *p = (int *)malloc(sizeof(int));
    r2 = foo(*p);
    y = r2; // x y

    free(r1);
    free(r2);
    return 0;
}