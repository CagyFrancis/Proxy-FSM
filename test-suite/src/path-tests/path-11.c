void foo(int **x, int *y)
{
    *x = y;
}

int main()
{
    int **p, *q;
    int *a, *b, c, d;

    if (a)
    {
        p = &a;
        q = &c;
        foo(p, q);
    }
    else
    {
        p = &b;
        q = &d;
        foo(p, q);
    }
    *p = q;

    return 0; // a b
}