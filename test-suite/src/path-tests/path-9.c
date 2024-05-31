typedef struct subagg
{
    int *d;
} subagg;

typedef struct agg
{
    int *c;
    subagg sub;
} agg;

int main()
{
    int *a, *b, k1, k2, *p;
    agg g1, g2;
    agg *g = &g1;

    if (k1)
    {
        g = &g2;
        a = &k1;
    }
    else
    {
        a = &k2;
    }

    g->sub.d = a;
    p = g1.sub.d; // k2
    p = g2.sub.d; // k1

    return 0;
}
