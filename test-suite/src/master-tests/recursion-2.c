int g;

int *foo(int *p)
{
    if (g >= 10) {
        return p; 
    }
    g += 1;
    return foo(p);
}

int main()
{
    g = 0;
    int a = 10;
    int *p;

    p = foo(&a);

    return 0;
}