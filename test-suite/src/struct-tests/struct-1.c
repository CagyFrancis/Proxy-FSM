/*
 * Struct alias in flow-sensitive analysis.
 * Author: Sen Ye
 * Date: 08/11/2013
 */

struct MyStruct
{
	int *f1;
	int *f2;
};

int main()
{
	int a, b, c;
	struct MyStruct s1 = {&a, &b};
	struct MyStruct s2 = {&b, &c};
	int *p;

	p = s2.f1; //
	s2.f1 = &a;
	p = s2.f1; //

	return 0;
}
