void bar(int **p, int *q)
{
    *p = q;
}

int *foo(int **p, int *a1, int *a2)
{
    bar(p, a1);
    bar(p, a2);
    return *p;
}

int main()
{
    int o1 = 10, o2 = 20;
    int *p, *v;

    v = foo(&p, &o1, &o2);

    return 0; // v
}