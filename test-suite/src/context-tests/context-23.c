/*
 * Alias due to context-insensitive
 * Author: Sen Ye
 * Date: 06/09/2013
 */
void foo(int *m, int *n)
{
	return; // m n
}

int main()
{
	int *p, *q;
	int a, b;

	if (a)
	{
		p = &a;
		q = &b;
		foo(p, q);
	}
	else
	{
		p = &b;
		q = &a;
		foo(p, q);
	}
	
	return 0;
}
