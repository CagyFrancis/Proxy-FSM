typedef struct gg
{
    int *f1;
} gg;

typedef struct ff
{
    gg *f1;
    gg *f2;
} ff;

int main()
{
    int a, b;
    int *p;
    ff f;
    gg g1, g2;

    g1.f1 = &a;
    g2.f1 = &b;
    f.f1 = &g1;
    f.f2 = &g2;

    p = f.f1->f1; //
    p = f.f2->f1; //

    return 0;
}