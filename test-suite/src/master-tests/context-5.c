void foo(int **p, int *q)
{
    *p = q;
}

int main()
{
    int **p2, *p1;
    int a, b;
    p2 = &p1;
    p1 = &a;

    foo(p2, &b);

    return 0; // p1
}