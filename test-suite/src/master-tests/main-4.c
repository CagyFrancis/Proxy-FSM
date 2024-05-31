void foo1(void) {/*do something*/}

void foo2(void) {/*do something*/}

void foo3(void) {/*do something*/}

int main() {
    int cond;
    void (*p)(void);

    if (cond) p = foo1;
    else p = foo3;

    p();

    return 0;
}