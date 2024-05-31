#include <stdlib.h>

typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

int main()
{
    int *p;
    mystruct x, y;
    mystruct *q = &x;

    x.f1 = (int *)malloc(sizeof(int));
    y.f2 = x.f1;
    p = y.f2;
    free(p);

    (*q).f1 = (int *)malloc(sizeof(int));    
    y.f2 = (*q).f1;
    p = y.f2;
    free(p);

    return 0;
}