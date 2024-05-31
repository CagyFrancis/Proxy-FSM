/*
 * Global variables test.
 * Author: Sen Ye
 * Date: 07/05/2014
 */
struct MyStruct
{
	char f0[20];
	int f1;
	int *f2;
};

int x, y;
struct MyStruct global = {"abcdefg", 20, &x};

void foo(int **pp, int **qq)
{
	*pp = &x;
	*qq = &y;
}

void bar(int **pp, int **qq)
{
	*pp = &x;
	*qq = &x;
}

int main()
{
	int *p, *q, *r;
	int **pp, **qq;

	pp = &p;
	qq = &q;
	bar(pp, qq);
	r = global.f2;

	return 0; // p q r
}
