char *f(char *a)
{
    char *b;
    b = a;
    return b; // a
}

int main()
{
    char a[10];
    char *c;

    c = f(a);
    c = f(c);
    c = f(c);
    c = f(c);

    return 0; // c
}
