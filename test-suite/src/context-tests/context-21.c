int a;

int *foo(int *x)
{
    int *z = x;
    int *y;
    if (x)
        y = foo(z);
    else
        y = x;

    return y; // x y
}

int main()
{
    int *p;
    p = &a;

    p = foo(p); // p

    return 0;
}
