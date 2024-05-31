/* 结构体数组 指针运算索引 */

typedef struct MyStruct
{
	int *f1;
	int *f2;
} MyStruct;

int main()
{
	MyStruct x[2];
	int a = 0, b = 1;
	MyStruct *y = x;
	int *p;

	x[0].f1 = &a;
	x[1].f2 = &b;

	p = y->f1;       // a
	p = (y + 1)->f2; // b

	return 0;
}
