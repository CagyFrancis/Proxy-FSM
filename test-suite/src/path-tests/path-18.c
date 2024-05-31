int x, y, *q, *f, *e, d;

void foo(int **p)
{
	f = &x;
	if (x)
	{
		p = &e;
		f = &y;
	}
	*p = f; // q e
}

int main()
{
	int **a, c;
	a = &q;
	f = &d;
	foo(a);

	return 0;
}
