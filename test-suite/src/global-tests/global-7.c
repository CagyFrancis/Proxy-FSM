int **pp, **qq;
int *p, *q;
int x;

void foo()
{
	pp = &p;
	p = &x;
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
