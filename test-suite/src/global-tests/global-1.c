int *g;

void foo(int *x)
{
    g = x;
}

int main()
{
    int a = 10;
    int *p;

    foo(&a);
    p = g;

    return 0;
}