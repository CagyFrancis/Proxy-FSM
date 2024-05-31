int **x, *x1;

void f(int **m)
{
	int **n, *y, *k, z, r;
	n = &y;
	y = &z;
	if (z == 1)
	{
		*n = &r; // y m
		k = *n;
		f(n);
	}
}

int main()
{
	x = &x1;
	f(x);
	return 0;
}
