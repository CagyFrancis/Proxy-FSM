int **g;

void foo(int **p, int *q)
{
	g = p; // p q
	*g = q;
}

int main()
{
	int **a, *b, *a1, b1;

	a = &a1;
	b = &b1;
	foo(a, b);

	return 0;
}
