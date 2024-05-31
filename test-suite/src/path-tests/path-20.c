int main()
{
    int **a, **b, *f, *g, r, w, q, *obj, k;
    f = &k;

    if (a)
    {
        a = &f;
        f = &r;
    }
    else
    {
        a = &g;
        g = &w;
    }
    *a = &q;  // f g
    
    return 0;
}
