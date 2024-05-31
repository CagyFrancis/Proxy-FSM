#include <stdlib.h>

typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

int main()
{
    int a, b;
    int *p;
    mystruct *x;
    mystruct **q = &x;

    x = (mystruct *)malloc(sizeof(mystruct));
    x->f1 = &a;
    p = x->f1;
    free(x);

    *q = (mystruct *)malloc(sizeof(mystruct));    
    (*q)->f2 = &b;
    p = (*q)->f2;

    free(x);
    return 0;
}