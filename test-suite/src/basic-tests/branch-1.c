int *p, a, b;

int main()
{
    int *q, s, c, d;

    q = &s;
    p = q;
    if (a)
    {
        p = &c;
    }
    else
    {
        p = &d;
    }
    
    return 0; // p
}
