int main()
{
    int a, b, c;
    int *p, *q;
    q = &a;

    for (int i = 0; i < 10; i++)
    {
        if (i >= 5)
        {
            p = q; // p
            q = &b;
        }
        else
        {
            p = q; // p
            q = &c;
        }
    }

    return 0; // q
}