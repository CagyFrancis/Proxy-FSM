typedef struct B
{
    int *f1;
    int *f2[2];
} B;

typedef struct A
{
    int *f1;
    int *f2[2];
    B *f3;
    B *f4[2];
} A;

int main()
{
    int x = 10, y = 20, w = 30;
    int *p;
    B b = {&x, {&y, &w}};
    A a = {&x, {&y, &w}, &b, {&b, &b}};

    p = a.f3->f2[1];
    p = a.f4[1]->f2[1];

    return 0;
}