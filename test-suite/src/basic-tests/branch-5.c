int main()
{
    int *p, *s, *r, *w, *q, *x;
    int ***m, **n, *z, *y, z1, y1;

    m = &n;
    n = &z;
    *m = &y;
    z = &z1;
    y = &y1;
    z = **m;

    return 0; // n z
}
