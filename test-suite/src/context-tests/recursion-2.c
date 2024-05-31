int *x, y;

void f(int *m)
{
	int *n; // m
	if (y == 1)
	{
		n = &y;
		f(n);
	}
}

int main()
{
	x = &y;
	f(x);
	return 0;
}
