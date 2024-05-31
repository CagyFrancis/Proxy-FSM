/* 指针数组 指针运算索引 */

int main()
{
	int a, b;
	int *x[2] = {&a, &b};
	int **y = x;
	int *p;

	p = *y;       // a
	p = *(y + 1); // b

	return 0;
}
