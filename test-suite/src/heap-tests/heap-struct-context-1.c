#include <stdlib.h>

typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

mystruct *foo(mystruct *p)
{
    return p;
}

int main()
{
    int a, b;
    int *p;
    mystruct *x, *r1, *r2;
    mystruct **q = &x;

    x = (mystruct *)malloc(sizeof(mystruct));
    x->f1 = &a;
    r1 = foo(x);
    p = r1->f1;
    free(x);

    *q = (mystruct *)malloc(sizeof(mystruct));    
    (*q)->f1 = &b;
    r2 = foo(*q);
    p = r2->f1;

    free(x);
    return 0;
}