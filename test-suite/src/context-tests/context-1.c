void foo(int *x, int *y)
{
	x = y; // x
}

int main()
{
	int *a, *b;
	int a1, b1;
	int *p;

	a = &a1;
	b = &b1;
	
	foo(a, b);
	
    return 0;
}
