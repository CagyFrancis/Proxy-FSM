int main()
{
    int **p, **q;
    int *a, *b;
    int *m, *n;
    int a1, b1, m1;

    a = &a1;
    b = &b1;
    m = &m1;
    p = q = &a;

    if (a)
    {
        p = q = &b;
    }

    *p = m; // a b
    n = *q; // n

    return 0;
}
