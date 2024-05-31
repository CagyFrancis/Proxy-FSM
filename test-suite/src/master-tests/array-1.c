int **foo(int *p[2])
{
	return p;
}

int main()
{
	int a, b, c;
	int *x[2] = {&a, &b};
	int *y[2] = {&b, &c};
	int **r1, **r2;
	int *p;

	r1 = foo(x);
	r2 = foo(y);

	p = r1[0]; // a
	p = r2[1]; // c

	return 0;
}
