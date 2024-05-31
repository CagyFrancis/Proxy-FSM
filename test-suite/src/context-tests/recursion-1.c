int *x, y, z;

void f()
{
    if (z > 5)
        return;
    z++;
    if (1)
    {
        x = &y; // y
        f();
        x = &z; // z
        f();
    }
}

int main()
{
    f();
    return 0;
}
