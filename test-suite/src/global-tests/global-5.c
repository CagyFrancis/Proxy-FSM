int **pp, **qq;
int *p, *q;
int x;

void foo()
{
	*pp = &x;
}

void bar()
{
	qq = &q;
	q = &x;
}

int main()
{
	pp = &p;
	foo();
	bar();
	return 0; // pp qq
}
