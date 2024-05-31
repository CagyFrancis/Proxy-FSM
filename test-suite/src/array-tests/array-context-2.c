/* 指针数组 上下文敏感 变量索引 */

int **foo(int **p)
{
	return p;
}

int main()
{
	int a = 0, b = 1, c;
	int *x[2] = {&a, &b};
	int *y[2] = {&b, &c};
	int **r1, **r2;
	int *p;

	r1 = foo(x);
	r2 = foo(y);

	p = r1[a]; // a
	p = r2[b]; // c

	return 0;
}
