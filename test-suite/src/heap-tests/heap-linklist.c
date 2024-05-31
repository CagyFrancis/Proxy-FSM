/* 单链表 */
#include <stdlib.h>

typedef char ElemType;
typedef struct LinkNode
{
	ElemType data;
	struct LinkNode *link;
} LinkNode;

void FreeList(LinkNode *head)
{
	LinkNode *p;
	LinkNode *start = head;
	while (head != NULL && head != start)
	{
		p = head->link;
		free(head);
		head = p;
	}
}

LinkNode *CreateList1()
{
	LinkNode *node1 = (LinkNode *)malloc(sizeof(LinkNode));
	LinkNode *node2 = (LinkNode *)malloc(sizeof(LinkNode));
	LinkNode *node3 = (LinkNode *)malloc(sizeof(LinkNode));

	node1->link = node2;
	node2->link = node3;
	node3->link = NULL;

	return node1;
}

LinkNode *CreateList2()
{
	LinkNode *node1 = (LinkNode *)malloc(sizeof(LinkNode));
	LinkNode *node2 = (LinkNode *)malloc(sizeof(LinkNode));
	LinkNode *node3 = (LinkNode *)malloc(sizeof(LinkNode));

	node1->link = node2;
	node2->link = node3;
	node3->link = node1;

	return node1;
}

int main()
{
	LinkNode *x, *y;
	LinkNode *p;

	x = CreateList1();
	y = CreateList2();

	p = x->link;
	p = y->link->link;

	FreeList(x); // malloc 26
	FreeList(y); // malloc 40
	return 0;
}