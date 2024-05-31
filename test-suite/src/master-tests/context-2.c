void foo(int **p, int *q)
{
    *p = q;
}

int main()
{
    int a = 10, b = 20;
    int *x;

    foo(&x, &a);
    foo(&x, &b);

    return 0; // x
}