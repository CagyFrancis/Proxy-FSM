void foo(int ***p, int *q)
{
    **p = q;
}

int main()
{
    int a = 10, b = 20;
    int *p = &a;
    int **q = &p;

    foo(&q, &b);

    return 0;
}