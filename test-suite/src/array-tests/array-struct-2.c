/* 结构体数组 变量索引 */

typedef struct MyStruct
{
	int *f1;
	int *f2;
} MyStruct;

int main()
{
	MyStruct x[2];
	int a = 0, b = 1;
	int *p;

	x[0].f1 = &a;
	x[1].f2 = &b;

	p = x[a].f1; // a
	p = x[b].f2; // b

	return 0;
}
