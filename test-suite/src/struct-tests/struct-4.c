typedef struct gg
{
    int *f1;
} gg;

typedef struct ff
{
    int *f1;
    gg *f2;
} ff;

int main()
{
    int a, b;
    int *p;
    ff f;
    gg g;

    g.f1 = &a;
    f.f1 = &b;
    f.f2 = &g;

    p = f.f2->f1; //
    p = f.f1; //

    return 0;
}