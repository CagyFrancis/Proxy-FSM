void swap(char** x, char** y)
{
    char *t = *y;
    *y = *x;
    *x = t;
}

char *g(char *a)
{
    return a; // a
}

char *f(char *a)
{
    char *b;
    b = a;
    return g(b); // a
}

char *c;
int main()
{
    char b[20];
    char a[20];
    char *p1, *p2;

    p1 = a;
    p2 = b;

    swap(&p1, &p2);
    c = b;
    c = f(c);
    g(c); // c

    return 0;
}
