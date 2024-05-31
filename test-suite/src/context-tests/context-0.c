int *foo(int *p)
{
    return p; // p
}

int main()
{
    int a, b;
    int *x, *y;

    x = foo(&a);
    y = foo(&b);
    
    return 0; // x y
}
