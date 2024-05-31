int obj, t, s;
int *k = &s;

void foo(int **p, int **q)
{
	*p = *q; // p q
	*q = &obj;
}

int main()
{
	int **x, **y;
	int *a, *b, *c, *d, *e;
	a = &t;
	x = &a;
	y = &b;

	foo(x, y);
	c = &t;
	c = &s;
	a = c;
	if (t)
	{
		c = &obj;
		x = &c;
		y = &e;
	}
	else
	{
		x = &d;
		y = &d;
	}
	e = &t;
	foo(x, y);
	
	return 0;
}

