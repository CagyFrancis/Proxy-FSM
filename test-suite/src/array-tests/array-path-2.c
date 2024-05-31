/* 指针数组 流敏感 变量索引 */

int main()
{
	int a = 0, b = 1, c, d;
	int *x[2] = {&a, &b};
	int *p;

	if (c)
	{
		x[0] = &b;
		x[1] = &c;
	}
	else
	{
		x[0] = &c;
		x[1] = &d;
	}
	p = x[a]; // b c
	p = x[b]; // c d

	return 0;
}
