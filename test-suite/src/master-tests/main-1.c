#include <stdlib.h>

int *quz() {
    int *r = (int *)malloc(sizeof(int));
    return r;        // V-R
}

int *bar(int *q) {
    return q;        // F-R
}

int *foo(int *p) {
    int *t = bar(p); // F-F
    int *s = bar(t); // R-F
    return s;        // R-R
}

int main() {
    int a, b;
    int *r1, *r2, *r3;

    r1 = foo(&a);   // V-F
    r2 = foo(&b);   // V-F
    r3 = quz();

    return 0;
}