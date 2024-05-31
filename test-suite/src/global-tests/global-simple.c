int a, b;
int *x, *y, *z;
int **p;

int main()
{
	z = &b;
	p = &x;

    x = &a;
    y = x; // x y
    *p = z;
    y = *p; // x y

	return 0;
}
