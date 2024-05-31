/*
 * Alias due to struct assignment
 * Author: Sen Ye
 * Date: 06/09/2013
 */

struct ss
{
	int *f1;
};

int main()
{
	int a;
	int *p;
	struct ss s1, s2;
	struct ss *q;
	
	s1.f1 = &a;
	q = &s2;
	*q = s1;
	p = s2.f1; // 

	return 0;
}
