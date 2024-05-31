void bar(int **k, int **s)
{
	*k = *s; // k s
}

void foo(int **x, int **y, int **z)
{
	int t; // x y z
	*y = &t;
	*z = *x;
}

int main()
{
	int *p1, *q1, *r1, *a1, *b1, *c1, q2, a2;
	int **p = &p1;
	int **q = &q1;
	int **r = &r1;
	int **a = &a1;
	int **b = &b1;
	int **c = &c1;
	
	q1 = &q2;
	a1 = &a2;
	bar(p, q);
	foo(p, q, r);
	foo(a, b, c);

	return 0;
}
