/* 结构体数组 上下文敏感 变量运算索引 */

typedef struct MyStruct
{
	int *f1;
	int *f2;
} MyStruct;

MyStruct *foo(MyStruct *p)
{
	return p;
}

int main()
{
	MyStruct x[2], y[2];
	MyStruct *r1, *r2;
	int a = 0, b, c;
	int *p;

	x[0].f1 = &a;
	x[1].f2 = &b;
	y[0].f1 = &b;
	y[1].f2 = &c;

	r1 = foo(x);
	r2 = foo(y);

	p = r1[a].f1;     // a
	p = r2[a + 1].f2; // c

	return 0;
}
