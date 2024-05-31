void foo(int *p)
{
    return;
}

int main()
{
	int a[2] = {0, 1};
	int *p = &a[1];

    foo(p);

    return 0;
}