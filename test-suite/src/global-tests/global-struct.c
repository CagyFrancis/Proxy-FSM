typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

int a, b;
int *p;
mystruct x, y, z;
mystruct *q;

int main()
{
    z.f2 = &b;
    q = &x;
    
    x.f1 = &a;
    y.f2 = x.f1;
    p = y.f2; // p

    (*q).f1 = z.f2;
    y.f2 = (*q).f1;
    p = y.f2; // p

    return 0;
}