/* 单链表 上下文敏感 */
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

LinkNode *UseList(LinkNode *head)
{
	return head;
}

int main()
{
	LinkNode *x, *y;
	LinkNode *r1, *r2;
	LinkNode *p;

	x = CreateList1();
	y = CreateList2();

	r1 = UseList(x);
	r2 = UseList(y);

	p = r1->link;       // malloc 26
	p = r2->link->link; // malloc 40

	FreeList(x);
	FreeList(y);
	return 0;
}