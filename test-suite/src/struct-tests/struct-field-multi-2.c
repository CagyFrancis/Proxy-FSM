/*
 * Alias due to struct.
 * Author: Sen Ye
 * Date: 10/10/2013
 */

typedef struct MyStruct
{
	int *f1;
	struct MyStruct *f2;
} MyStruct;

int main()
{
	int a, b;
	int *p;
	MyStruct x;
	MyStruct y = {&a, &x};

	x.f1 = &b;
	p = y.f2->f1; //
	
	return 0;
}
