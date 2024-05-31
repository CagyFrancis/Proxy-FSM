int *foo(int *p)
{
    return p;
}

int main()
{
    int a = 10, b = 20;
    int *v1, *v2;

    v1 = foo(&a);
    v2 = foo(&b);

    return 0; // v1 v2
}