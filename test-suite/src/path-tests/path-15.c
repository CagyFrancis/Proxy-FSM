int main()
{
    int **p, *q, **w, *v, *a, a1, q1;
    a = &a1;
    p = &a;
    q = &q1;

    if (p)
        *p = q;
    else
        w = &a;

    return 0; // a
}
