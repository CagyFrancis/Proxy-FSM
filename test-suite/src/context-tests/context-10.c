int obj, t, s;

void foo(int **p, int **q)
{
	*q = &obj; // p q
}

int main()
{
	int **x, **y;
	int *a, *b, *c, *d, *e;

	x = &a;
	y = &b;
	foo(x, y);
	c = &s;
	if (t)
	{
		x = &c;
		y = &e;
	}
	else
	{
		x = &d;
		y = &d;
	}
	foo(x, y);

	return 0;
}

