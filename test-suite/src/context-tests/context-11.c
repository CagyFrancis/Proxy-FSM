void foo(int **a, int *b)
{
	*a = b; // a b
}

int main()
{
	int *p, q, *x, y;
	
	foo(&p, &q);
	foo(&x, &y);

	return 0;
}
