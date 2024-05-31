/*
 * Alias due to struct assignment
 * Author: Sen Ye
 * Date: 06/09/2013
 */

struct s
{
	int *a;
	int b;
};

int main()
{
	struct s s1, s2;
	int x, y;
	int *p;

	s1.a = &x;
	s2.a = s1.a;
	p = s2.a; //
	
	return 0;
}
