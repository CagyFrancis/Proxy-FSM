typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

mystruct foo(mystruct p)
{
    return p;
}

int main()
{
    int a, b;
    int *p;
    mystruct x, y, z = {&a, &b};
    mystruct r1, r2;
    mystruct *q = &x;

    x.f1 = &a;
    r1 = foo(x);
    p = r1.f1;

    (*q).f1 = z.f2;
    r2 = foo(*q);
    p = r2.f1;

    return 0;
}