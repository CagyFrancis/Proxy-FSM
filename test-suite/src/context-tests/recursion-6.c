int *x, y, z;

void f()
{
	if (z)
	{
		x = &y;
		f();
		x = &z;
		f();
	}
	y = 10; //
	return; // x
}

int main()
{
	f();
	return 0;
}

