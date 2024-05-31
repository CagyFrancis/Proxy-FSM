int k;

void bar(int **s)
{
    *s = &k;
}

void foo(int **x)
{
    bar(x);
}

int main()
{
    int **p, *q;
    int *b, *c, e;
    
    if (e)
    {
        p = &b;
        foo(&q);
    }
    else
    {
        p = &c;
        q = &e;
    }
    *p = q;

    return 0; // b c
}

