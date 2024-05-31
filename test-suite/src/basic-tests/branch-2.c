int t;

int main()
{
	int **x, **y;
	int *a, *b, *c, *d, e;
	
	x = &a;
	*x = &e;
	for (t = 0; t < 10; t++)
		if (e)
		{
			x = &c;
		}
		else
		{
			x = &d;
		}
	*x = &t;
	
	return 0; // c d x
}
