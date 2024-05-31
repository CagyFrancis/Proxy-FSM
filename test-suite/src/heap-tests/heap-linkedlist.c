/*
 * Heap
 * Author: Sen Ye
 * Date: 15/10/2013
 * Description: heap objects are identified according to their
 *		allocation sites.
 */
#include <stdlib.h>

struct Node
{
	int *data;
	struct Node *next;
};

// return two malloc object
void malloc_list(struct Node *p, int num)
{
	int *p_data1 = NULL, *p_data2 = NULL;
	struct Node *p_next = NULL;
	p->data = NULL;
	while (num != 0)
	{
		p->data = (int *)malloc(sizeof(int));
		p_data1 = p->data;
		p_next = (struct Node *)malloc(sizeof(struct Node));
		p->next = p_next;
		p_data2 = p->data;
		num--;
	}
	return; // p_data1 p_data2
}

int main()
{
	struct Node *head = (struct Node *)malloc(sizeof(struct Node));
	int *p;
	int num = 4;
	malloc_list(head, num);

	p = head->next->data; //
	p = head->next->next->data; //

	return 0;
}
