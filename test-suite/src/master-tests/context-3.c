void foo(int **p, int **q)
{
    int *tmp = *q;
    *q = *p;
    *p = tmp;
}

int main()
{
    int a = 10, b = 20;
    int *x = &a;
    int *y = &b;

    foo(&x, &y);
    foo(&x, &y);
    foo(&x, &y);

    return 0; // x y
}