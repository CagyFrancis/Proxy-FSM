int main() {
    int a, b, c;
    int *p = &a, *q = &b, *s;
    int **r;

    if (a)
        r = &p;
    else
        r = &q;

    *r = &c;
    s = *r;

    return 0;
}