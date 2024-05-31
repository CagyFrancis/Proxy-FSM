/*
 * Heap
 * Author: Sen Ye
 * Date: 12/10/2013
 * Description: heap objects are identified according to their
 *		allocation sites.
 */
// return two malloc object
#include <stdlib.h>

void malloc_two(int **p, int **q)
{
	*p = (int *)malloc(sizeof(int));
	*q = (int *)malloc(sizeof(int));
}

int main()
{
	int *p;
	int **o1 = malloc(sizeof(int *));
	int **o2 = malloc(sizeof(int *));
	malloc_two(o1, o2);
	
	p = *o1; //
	p = *o2; //

	return 0;
}
