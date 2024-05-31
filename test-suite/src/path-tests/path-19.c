int y, *q, *r, *f, *e, c, d;

void foo(int **p)
{
    if (y)
    {
        p = &e;
        f = &y;
    }
    *p = f; // q r e
}

int main()
{
    int **a, **b;
    e = 0;
    a = &q;
    f = &d;
    foo(a);
    b = &r;
    f = &c;
    foo(b);
    
    return 0;
}
