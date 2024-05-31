int main()
{
    int **p, *q;
    int *a, *b, c, d;

    if (a)
    {
        p = &a;
        q = &c;
    }
    else if (b)
    {
        p = &b;
        q = &d;
    }
    *p = q;

    return 0; // a b
}
