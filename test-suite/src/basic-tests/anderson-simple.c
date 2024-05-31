int main()
{
    int a, b;
    int *x, *y, *z = &b;
    int **p = &x;

    x = &a;
    y = x; // x y
    *p = z;
    y = *p; // x y

    return 0;
}