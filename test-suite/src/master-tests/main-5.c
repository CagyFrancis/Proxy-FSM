int* foo(int *x) {

    return x;

}

void bar() {

    int a, b, *c;

    c = foo(&a);

    c = foo(&b);

}

int main() {

    return 0;

}