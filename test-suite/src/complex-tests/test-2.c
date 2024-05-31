char *f(char *a)
{
    char *b;
    b = a;
    return b; // a
}

void g(char *a)
{
    f(a); // a
}

int main()
{
    char a[10];
    char *c;

    f(a);
    g(a);

    return 0;
}
