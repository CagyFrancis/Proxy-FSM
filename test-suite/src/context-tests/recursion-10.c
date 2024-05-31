int **p, *x, y, z;

void f()
{
    p = &x;
    if (z)
    {
        *p = &y;
        f();
        *p = &z;
        f();
    }
    return; // x p
}

int main()
{
    f();
    return 0;
}
