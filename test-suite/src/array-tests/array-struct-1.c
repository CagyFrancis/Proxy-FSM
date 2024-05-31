/* 结构体数组 常量索引 */

typedef struct MyStruct
{
	int *f1;
	int *f2;
} MyStruct;

int main()
{
	MyStruct x[2];
	int a, b;
	int *p;

	x[0].f1 = &a;
	x[1].f2 = &b;

	p = x[0].f1; // a
	p = x[1].f2; // b

	return 0;
}
