/*
 * Simple program to test flow-sensitive analysis.
 * Author: Sen Ye
 * Date: 08/11/2013
 */

int main()
{
	int **p, **q;
	int *x, *y;
	int x0, y0;

	p = &x;
	q = &y;
	*p = &x0; // x
	*q = &y0; // y
	*p = *q;  // x

	return 0;
}
