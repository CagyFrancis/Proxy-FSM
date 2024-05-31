int *bar(int *p)
{
    return p;
}

int *foo(int **p)
{
    return bar(*p);
}

int main()
{
    int **p, *q, *r, x, y;
    p = &q;
    q = &x;
    r = &y;

    r = foo(p); // r
}