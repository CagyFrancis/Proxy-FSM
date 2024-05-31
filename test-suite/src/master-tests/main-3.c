int* foo(int *p) {
    return p;
}

int main() {
    int a, b, *r1, *r2;

    r1 = foo(&a); // L1
    r2 = foo(&b); // L2

    return 0;
}