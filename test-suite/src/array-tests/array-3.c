/* 指针数组 变量运算索引 */

int main()
{
	int a = 0, b;
	int *x[2] = {&a, &b};
	int *p;

	p = x[a];     // a
	p = x[a + 1]; // b

	return 0;
}
