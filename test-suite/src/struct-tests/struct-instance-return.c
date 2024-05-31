/*
 * Return a struct instance from function.
 * Author: Sen Ye
 * Date: 07/05/2014
 */

struct MyStruct
{
	int *f1;
	char f2;
};

int x, y;

struct MyStruct foo()
{
	struct MyStruct m;
	m.f1 = &x;
	return m;
}

int main()
{
	struct MyStruct m;
	int *p;
	
	m = foo();
	p = m.f1;

	return 0;
}
