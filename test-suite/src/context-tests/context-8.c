int obj1, obj2;

void foo(int **p, int **q)
{
	*p = &obj1; // p q
	*q = &obj2;
}

int main()
{
	int **a, **b, *x, *y, *z;
	if (a)
	{
		a = &x;
		b = &y;
	}
	else
	{
		a = &z;
		b = &z;
	}
	foo(a, b);

	return 0;
}
