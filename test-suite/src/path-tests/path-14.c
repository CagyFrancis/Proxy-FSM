int main()
{
    int **p, *q;
    int *a, *b, c, d, e;
    q = &c;
    
    if (a)
    {
        p = &a;
        if (c)
        {
            q = &d;
        }
    }
    else
    {
        p = &b;
        q = &e;
    }
    *p = q;

    return 0; // a b
}
