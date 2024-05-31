int main()
{
    int a[100] = {0};
    int *p = a;

    for (int i = 0; i < 40; i++)
    {
        if (*p)
            p = p + 1;
        else
            p = p + 2;
    }

    return 0; //
}