int obj;

void foo(int ***x, int **y)
{
    *x = y;
}

int main()
{
    int ***p, **q, **a, **b, *c, *m, *n, d;
    m = &d;
    a = b = &c;
    
    if (a)
    {
        p = &a;
        q = &c;
        foo(p, q);
    }
    else
    {
        p = &b;
        q = &c;
        foo(p, q);
    }

    *a = m; // c
    n = *b; // n

    return 0;
}

