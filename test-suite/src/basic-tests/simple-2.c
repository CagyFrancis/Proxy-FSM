/*
 * Simple program to test flow-sensitive analysis.
 * Author: Sen Ye
 * Date: 08/11/2013
 */

int main()
{
	int *p, *q, *r;
	int x, y, z;

	p = &x;
	q = &y;
	r = &z;
	p = q; // p
	p = r; // p
	
	return 0;
}
