/*
 * Global variable
 * Author: Sen Ye
 * Date: 13/10/2013
 * Description: initialise global variables when declared
 *		and check alias in main function.
 */

int x;
int *p, *q;
int **pp = &p;
int **qq = &q;

void foo()
{
	p = &x;
}

void bar()
{
	q = &x;
}

int main()
{
	foo();
	bar();

	return 0; // p q
}
