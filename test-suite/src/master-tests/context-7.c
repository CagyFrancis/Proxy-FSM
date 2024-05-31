void bar(int **p, int *q)
{
    *p = q;
}

void foo(int **p, int *q, int *r)
{
    bar(p, q);
    *p = r;
}

int main()
{
    int *p;
    int a = 10, b = 20;

    foo(&p, &a, &b);

    return 0;
}