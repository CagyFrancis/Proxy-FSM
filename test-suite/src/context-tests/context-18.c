int obj, b;

void bar(int **s)
{
	*s = &b; // s
}

void foo(int **p)
{
	*p = &obj; // p
	bar(p);
}

int main()
{
	int **x;
	int *a, *c;

	x = &a;
	foo(x);
	x = &c;
	foo(x);

	return 0;
}
