#include <stdlib.h>

int z1, z2;

void foo(int **);
void bar(int **);

void foo(int **p)
{
	p = (int **)malloc(sizeof(int *));
	*p = &z2;
	bar(p);
}

void bar(int **a)
{
	if (z1 > 5)
		return;
	z1++;
	int *c, b;
	*a = &b;
	c = *a; // a
	foo(a);
}

int main()
{
	int **x, *y;
	x = &y;
	y = &z1;
	foo(x);
	return 0;
}
