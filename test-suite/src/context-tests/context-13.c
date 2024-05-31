int ss;

void foo(int *x)
{
    static int *k = &ss; // x
    k = x;
}

int main()
{
    int *a, *b, obj, t;

    a = &obj;
    foo(a);
    b = &t;
    foo(b);

    return 0;
}

