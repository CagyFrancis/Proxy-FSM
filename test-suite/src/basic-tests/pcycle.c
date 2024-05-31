int main()
{
    int ***m, **n, *z, *y, z1, y1;

    m = &n;
    n = &z;
    *m = &y; // n
    
    z = &z1;
    y = &y1;
    z = **m; // z

    return 0;
}
