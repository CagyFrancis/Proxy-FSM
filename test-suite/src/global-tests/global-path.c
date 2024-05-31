int a, b, c;
int *x, *y, *z, *w;
int **p;

int main()
{
    z = &b;
    w = &c;
    p = &x;

    if (c)
        x = &a;
    else
        x = &b;
    y = x; // x y
    
    if (c)
        *p = z;
    else
        *p = w;
    y = *p; // x y

    return 0;
}