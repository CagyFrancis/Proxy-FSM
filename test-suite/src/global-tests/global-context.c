int a, b;
int *x, *y, *z;
int *r1, *r2;
int **p;

int *foo(int *p)
{
    return p;
}

int main()
{
    z = &b;
    p = &x;

    x = &a;
    r1 = foo(x);
    y = r1; // x y
    
    *p = z;
    r2 = foo(*p);
    y = *p; // x y

    return 0;
}