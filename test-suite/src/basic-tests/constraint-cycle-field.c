/*
 * Field cycle.
 * Author: Sen Ye
 * Date: 10/10/2013
 */

#include <stdlib.h>

struct MyStruct
{
	int *f1;
	struct MyStruct *next;
};

int main()
{
	struct MyStruct *p = (struct MyStruct *)malloc(sizeof(struct MyStruct));
	struct MyStruct *r;
	int *t;

	int num = 10;
	while (num)
	{
		p->next = (struct MyStruct *)malloc(sizeof(struct MyStruct));
		p->next->f1 = (int *)malloc(sizeof(int));
		p = p->next;
	}
	struct MyStruct *q = p;
	
	r = q->next;
	r = p->next->next;
	t = q->f1;
	t = p->next->f1;

	return 0;
}
