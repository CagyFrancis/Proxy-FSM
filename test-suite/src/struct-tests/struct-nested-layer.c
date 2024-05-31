/*
 * Nested structs
 * Author: Sen Ye
 * Date: 06/09/2013
 */

struct MyStruct2
{
	int *f3;
	int *f4;
};

struct MyStruct1
{
	int *f1;
	struct MyStruct2 f2;
};

int main()
{
	struct MyStruct1 ms;
	struct MyStruct1 *pms1;
	struct MyStruct2 *pms2;
	int a, b, c;
	int *p;

	ms.f1 = &c;
	ms.f2.f3 = &a;
	ms.f2.f4 = &b;
	pms1 = &ms;
	pms2 = &ms.f2;

	p = pms2->f4;
	p = pms2->f3;
	p = pms1->f2.f3;

	return 0;
}
