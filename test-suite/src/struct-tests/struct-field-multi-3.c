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
	int a;
	int *p;
	MyStruct x, y;
	MyStruct *xx = &x, *yy = &y;

	yy->f2 = xx;
	yy->f2->f1 = &a;
	p = xx->f1;   //
	p = x.f1;     //
	p = y.f2->f1; //
	
	return 0;
}
