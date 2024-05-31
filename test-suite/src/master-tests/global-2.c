int *g;

void foo(int **p)
{
    g = *p;
}

int main()
{
    int a = 10;
    int *p = &a;

    foo(&p);
    p = g;

    return 0;
}