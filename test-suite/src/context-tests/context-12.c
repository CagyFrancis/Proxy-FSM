int obj;

void foo(int **p, int **q)
{
	*p = &obj; // p q
}

int main()
{
	int **x, **y;
	int *a, *b, *c, *d, *e;
	
	x = &a;
	y = &b;
	foo(x, y);
	x = &c;
	foo(x, y);

	return 0;
}

