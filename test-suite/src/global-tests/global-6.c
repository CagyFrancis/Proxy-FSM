int g;
int *obj = &g;

void Zulu(int **p, int *q);

void Xray()
{

	int **x, *b, *w, d;
	x = &b;
	w = &d;
	Zulu(x, w); // b w
}

void Zulu(int **p, int *q)
{
	*p = q;
	*p = obj;
}

int main()
{
	Xray();
	return 0;
}