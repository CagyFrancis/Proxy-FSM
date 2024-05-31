void foo(int **p, int **q)
{
	*q = *p; // p q
}

int main()
{
	int **a, **b, **c, **d, **e, **f, *x, *y, *z, *w, *k, x1, y1, z1, w1, k1;
	x = &x1;
	y = &y1;
	w = &w1;
	k = &k1;

	a = &x;
	b = &y;
	c = &w;
	d = &k;

	foo(a, b);
	foo(c, d);

	return 0;
}
