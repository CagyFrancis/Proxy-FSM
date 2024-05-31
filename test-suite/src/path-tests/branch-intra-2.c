/*
 * Alias due to lack of path-sensitivity.
 * Author: Sen Ye
 * Date: 06/09/2013
 */

int main()
{
	int *p, *q;
	int a, b, c;
	
	if (c)
	{
		p = &a;
		q = &b;
	}
	else
	{
		p = &b;
		q = &c;
	}
	
	return 0; // p q
}
