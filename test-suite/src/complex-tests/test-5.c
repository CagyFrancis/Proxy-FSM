char *f(char *a)
{
    char *b;
    b = a;
    return b; // a
}

char *g(char *a)
{
    return f(a); // a
}

int main()
{
    char a[10];
    char b[20];
    char *c;

    f(a);
    c = f(b);
    g(c);

    return 0; // c
}
