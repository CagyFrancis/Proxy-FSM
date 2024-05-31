/* 结构体数组 流敏感 常量索引 */

typedef struct MyStruct
{
	int *f1;
	int *f2;
} MyStruct;

int main()
{
	MyStruct x[2];
	int a, b, c, d;
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
	p = x[0].f1; // b c
	p = x[1].f2; // c d

	return 0;
}
