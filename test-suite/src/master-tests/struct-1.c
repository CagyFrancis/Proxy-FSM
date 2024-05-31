typedef struct A
{
    int *f1;
    int *f2;
} A;

typedef struct B
{
    int *f1;
    A f2;
} B;

int main()
{
    int x = 10, y = 20, w = 30;
    int *p;
    A a1 = {&x, &y};
    A a2 = {&y, &w};
    B b = {&y, a1};

    b.f2 = a2;

    p = b.f2.f1; // y
    p = b.f2.f2; // w

    return 0;
}