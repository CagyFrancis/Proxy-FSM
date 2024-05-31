#include <stdlib.h>

char *f(char *a)
{
    char *c = malloc(10 * sizeof(char));
    return c; // a
}

char *g(char *a)
{
    return f(a); // a
}

char *h(char *a)
{
    return g(a); // a
}

char *i(char *a)
{
    return g(a); // a
}

int main()
{
    char a[10];
    char *c;

    if (a[0] == 1)
        c = h(a);
    else
        c = i(a);

    return 0; // c
}
