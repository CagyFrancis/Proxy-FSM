/*
 * Global variable
 * Author: Sen Ye
 * Date: 13/10/2013
 * Description: Initialise global variables in callee and check alias
 *		in caller.
 */
int **pp, **qq;
int *p, *q;
int x;

void foo()
{
	pp = &p;
	p = &x;
}

void bar()
{
	qq = &q;
	q = &x;
}

int main()
{
	foo();
	bar();
	return 0; // p q
}
