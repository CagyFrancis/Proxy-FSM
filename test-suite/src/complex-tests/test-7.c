void f(char **a)
{
    int b[10];
    (*a)++; // a
}

int main()
{
    char a[10];
    char *c;

    c = a;

    f(&c);
    f(&c);

    return 0; // c
}
