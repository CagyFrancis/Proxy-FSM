int g;

int* foo(int *x)
{
    if (g >= 5)
    {
        return &g;
    }
    g += 1;
    return foo(x);
}

int main()
{
    int a = 10;
    int *p;
    g = 0;

    p = foo(&a); // p

    return 0;
}