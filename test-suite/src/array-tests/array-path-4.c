/* 指针数组 流敏感 指针运算索引 */

int main()
{
	int a, b, c, d;
	int *x[2] = {&a, &b};
	int **y = x;
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
	p = *y;       // b c
	p = *(y + 1); // c d

	return 0;
}
