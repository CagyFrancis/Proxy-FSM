/* 指针数组 变量索引 */

int main()
{
	int a = 0, b = 1;
	int *x[2] = {&a, &b};
	int *p;

	p = x[a]; // a
	p = x[b]; // b

	return 0;
}
