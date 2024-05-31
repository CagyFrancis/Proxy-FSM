/*
 * Struct casting.
 * Author: Sen Ye
 * Date: 28/04/2014
 */

struct SrcStruct
{
	int *f1;
	int *f2;
	char f3;
};

struct DstStruct
{
	char f1;
	int *f2;
	int *f3;
};

int main()
{
	struct DstStruct *pdst;
	struct SrcStruct *psrc;
	struct SrcStruct s;
	int x, y, z;
	int *p;

	psrc = &s;
	psrc->f1 = &x;
	psrc->f2 = &y;

	pdst = (struct DstStruct *)psrc;

	p = pdst->f2;
	p = pdst->f3;

	return 0;
}
