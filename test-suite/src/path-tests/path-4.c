int main()
{
    int **p, **q;
    int **x, **y;
    int *a, *b, *x1, a1, b1;
    int *m, *n, n1;
    /// Note that n needs to be initialized
    n = &n1;
    a = &a1;
    b = &b1;
    x = y = &x1;
    p = q = &a;
    
    if (a)
    {
        p = x;
        q = y;
    }

    *p = n; // x1 a
    m = *q; // m

    return 0;
}
