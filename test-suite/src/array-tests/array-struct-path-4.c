/* 结构体数组 流敏感 指针运算索引 */

typedef struct MyStruct
{
	int *f1;
	int *f2;
} MyStruct;

int main()
{
	MyStruct x[2];
	int a, b, c, d;
	MyStruct *y = x;
	int *p;
	
	x[0].f1 = &a;
	x[1].f2 = &a;
	if (c)
	{
		x[0].f1 = &b;
		x[1].f2 = &c;
	}
	else
	{
		x[0].f1 = &c;
		x[1].f2 = &d;
	}
	p = y->f1;       // b c
	p = (y + 1)->f2; // c d

	return 0;
}
