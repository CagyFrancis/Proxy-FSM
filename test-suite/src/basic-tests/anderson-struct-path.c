typedef struct mystruct
{
    int *f1;
    int *f2;
} mystruct;

int main()
{
    int a, b, c;
    int *p;
    mystruct x, y, z = {&a, &b}, w = {&b, &c};
    mystruct *q = &x;

    if (c)
        x.f1 = &a;
    else
        x.f1 = &b;
    y.f2 = x.f1; 
    p = y.f2; // p
    
    if (c)
        (*q).f1 = z.f2;
    else
        (*q).f1 = w.f2;
    y.f2 = (*q).f1;
    p = y.f2; // p

    return 0;
}