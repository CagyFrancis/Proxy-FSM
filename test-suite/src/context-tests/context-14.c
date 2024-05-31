void foo(int *p, int *q)
{
	return; // p q
}

int main()
{
	int *x, *y;
	int a, b, c;

	if (c)
		x = &a;
	else
		x = &b;
	foo(x, y);
	x = &c;
	foo(x, y);

	return 0;
}

