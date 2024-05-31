int main()
{
    int **p, *q;
    int *b, *c, d, e;

    p = &c;
    q = &e;
    if (d)
    {
        p = &b;
    }
    else
    {
        q = &d;
    }
    *p = q;

   return 0; // b c
}
