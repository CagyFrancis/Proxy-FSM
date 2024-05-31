int main()
{
    int a, b, c, d;
    int *q, *p = &c;

    while (1)
    {
        if (c)
            if (d)
                p = &a;
            else
                p = &b;
        else
            if (d)
                p = &c;
            else
                p = &d;

        if (c)
            if (d)
                q = &a;
            else
                q = &b;
        else
            if (d)
                q = &c;
            else
                q = &d;

        q = p;
    }
    return 0;
}