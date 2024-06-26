/*
 * Global variables with function pointer initialisation.
 * Author: Sen Ye
 * Date: 07/05/2014
 */
int x, y;
int *p;

void foo()
{
	p = &y;
}

struct MyStruct
{
	void (*fp)();
	int *f1;
};

struct MyStruct context = {foo, &x};

int main()
{
	(*context.fp)();
	int *q = p;
	
	return 0; // q
}
