int x, *y, z;

void f(int **m)
{
	if (x)
	{
		*m = &x; // m y
		f(m);
	}
	else
	{
		*m = &z; // m y
	}
}

int main()
{
	int **a = &y;
	f(a);
	return 0;
}

