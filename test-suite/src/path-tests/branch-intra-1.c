/*
 * Branches for testing flow-sensitive analysis.
 * Author: Sen Ye
 * Date: 08/11/2013
 */

int main()
{
	int *p, *q, *r;
	int x, y;
	
	if (x)
		r = &x;
	else
		r = &y;
	
	q = &y; // y
	p = r;  // x y

	return 0;
}
