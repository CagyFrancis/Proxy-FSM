typedef struct agg
{
    int *k;
} agg;

int main()
{
    agg a1, a2;
    agg *a = &a1;
    agg *c = &a2;
    int obj, *p;

    a->k = &obj;
    c->k = a->k;
    p = c->k; //

    return 0;
}
