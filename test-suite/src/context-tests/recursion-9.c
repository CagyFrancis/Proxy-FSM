#include <stdlib.h>

int z;

void foo(int **);
void bar(int **);

void foo(int **a)
{
    if (z > 5)
        return;
    z++;
    *a = &z;
    bar(a); // a
}

void bar(int **q)
{
    int **a = (int **)malloc(sizeof(int *));
    foo(a); // q
}


int main()
{
    int **a, *b, *c, b1, c1;
    
    b = &b1;
    a = &b;
    foo(a);
    a = &c;
    foo(a);

    return 0;
}
