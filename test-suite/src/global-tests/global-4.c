int **pp, **qq;
int *p, *q;
int x, y;

void foo()
{
	pp = &p;
	p = &x;
	qq = &q;
	q = &y; // pp qq
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
