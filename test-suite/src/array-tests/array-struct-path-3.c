/* 结构体数组 流敏感 变量运算索引 */

typedef struct MyStruct
{
	int *f1;
	int *f2;
} MyStruct;

int main()
{
	MyStruct x[2];
	int a = 0, b, c, d;
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
	p = x[a].f1;     // b c
	p = x[a + 1].f2; // c d

	return 0;
}
