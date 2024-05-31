void foo(int *);
void bar(int *);

void foo(int *a)
{
    *a = 10; // a
    if (*a != 100)
        bar(a);
}

void bar(int *q)
{
    *q = 100; // q
    foo(q);
}

int main()
{
    int *a, b, c;

    a = &b;
    foo(a);
    a = &c;
    foo(a);

    return 0;
}
