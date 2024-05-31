#include <stdlib.h>

int *alloc()
{
	return (int *)malloc(sizeof(int));
}

void foo(int **p)
{
	*p = alloc(); // p
}

int main()
{
	int *a, *b, *c;

	foo(&a);
	foo(&b);
	foo(&c);

	return 0;
}
