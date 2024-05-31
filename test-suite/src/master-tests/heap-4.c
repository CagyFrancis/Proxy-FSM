#include <stdlib.h>

typedef struct node
{
    int data;
    struct node *link;
} node;

node* foo(node* root)
{
    root->link = malloc(sizeof(node));
    return root;
}

void bar()
{
    node head;
    node *r1, *r2;

    r1 = foo(&head);
    r2 = r1->link;

    free(r1->link);
}

int main()
{
    bar();
    return 0;
}