int *obj;
int **x, *b, *w, d;
int **z, *a, *y, c;

void Zulu(int **p, int *q)
{
	*p = q; // p q
}

void Xray()
{
	x = &b;
	w = &d;
	Zulu(x, w);
}

void Yank()
{
	z = &a;
	y = &c;
	Zulu(z, y);
}

int main()
{
	Xray();
	Yank();
	return 0;
}
