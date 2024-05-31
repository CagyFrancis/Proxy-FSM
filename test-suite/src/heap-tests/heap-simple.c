#include <stdlib.h>

int main()
{
    int *x, *y, *z;
    int **p = &x;

    x = (int *)malloc(sizeof(int));
    y = x; // x y
    free(y);

    *p = (int *)malloc(sizeof(int));
    y = *p; // x y
    free(y);

    return 0;
}