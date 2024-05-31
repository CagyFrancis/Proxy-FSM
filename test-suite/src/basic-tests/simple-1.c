/*
 * Simple program to test flow-sensitive analysis.
 * Author: Sen Ye
 * Date: 08/11/2013
 */

int main()
{
	int *p, *q;
	int x, y;

	p = &x;
	q = &y;
	p = q; // p

	return 0;
}
