typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

int a, b;
int *p;
mystruct x, y, z;
mystruct *r1, *r2;
mystruct *q;

mystruct *foo(mystruct *p)
{
    return p;
}

int main()
{
    z.f2 = &b;
    q = &x;

    x.f1 = &a;
    r1 = foo(&x);
    p = r1->f1;

    (*q).f1 = z.f2;
    r2 = foo(q);
    p = r2->f1;

    return 0;
}