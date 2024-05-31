void foo(int c)
{
    int a;
    int *p = &c;
    while (c)
    {
        p = &a;
    }
    return;
}

int main()
{
    foo(3);
    foo(0);
    return 0;
}