int main()
{
    int a, b, c, d, e, f, g, h, i, j, k, l, m, n;
    int *p, *q, *r, *s, *t, *u, *v;

    if (a) // 1
        p = &a;
    else
        p = &b;

    if (b) // 2
        q = &c;
    else
        q = &d;

    if (c) // 3
        r = &e;
    else
        r = &f;

    if (d) // 4
        s = &g;
    else
        s = &h;

    if (e) // 5
        t = &i;
    else
        t = &j;

    if (f) // 6
        u = &k;
    else
        u = &l;

    if (g) // 7
        v = &m;
    else
        v = &n;

    return 0;
}