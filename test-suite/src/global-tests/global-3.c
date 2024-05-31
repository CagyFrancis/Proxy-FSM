int x, y;
int *p = &x;
int *q = &y;
int **pp = &p;
int **qq = &q;

void foo()
{
	return; // pp qq
}

void bar()
{
	qq = &q;
	q = &x;
}

int main()
{
	foo();
	bar();
	return 0; // pp qq
}
