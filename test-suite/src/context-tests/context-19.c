int g;
int *obj = &g;

void Zulu(int **p, int *q)
{
	*p = q; // p q
	*p = obj;
}

void Xray()
{
	int **x, *b, *w, d;
	x = &b;
	w = &d;
	Zulu(x, w);
}

int main()
{
	Xray();
	return 0;
}
