int main()
{
	int *s, *r, *x, **y, t, z, k;

	s = &t;
	r = &z;
	y = &r;

	s = r;  // s
	x = *y; // x

	return 0;
}
