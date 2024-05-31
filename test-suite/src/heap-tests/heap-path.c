#include <stdlib.h>

int main()
{
    int a;
    int *x, *y;
    int **p = &x;

    if (a)
        x = (int *)malloc(sizeof(int));
    else
        x = (int *)malloc(sizeof(int));
    y = x; // x y
    free(y);

    if (a)
        *p = (int *)malloc(sizeof(int));
    else
        *p = (int *)malloc(sizeof(int));
    y = *p; // x y
    free(y);

    return 0;
}