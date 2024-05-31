/* 指针数组 常量索引 */

int main()
{
	int a, b;
	int *x[2] = {&a, &b};
	int *p;

	p = x[0]; // a
	p = x[1]; // b

	return 0;
}
