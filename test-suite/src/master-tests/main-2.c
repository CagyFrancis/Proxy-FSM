int *bar(int *p) {
    return p;
}

int *foo(int *q) {
    return bar(q); // L3
}

int main() {
    int a, b;
    int *r1, *r2;

    r1 = foo(&a); // L1
    r2 = foo(&b); // L2

    return 0;
}