#include <stdlib.h>

typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

int main()
{
    int a, b, c;
    int *p;
    mystruct *x;
    mystruct **q = &x;

    x = (mystruct *)malloc(sizeof(mystruct));
    if (a)
        x->f1 = &a;
    else
        x->f1 = &b;
    p = x->f1;
    free(x);

    *q = (mystruct *)malloc(sizeof(mystruct));
    if (a)    
        (*q)->f2 = &b;
    else
        (*q)->f2 = &c;
    p = (*q)->f2;

    free(x);
    return 0;
}