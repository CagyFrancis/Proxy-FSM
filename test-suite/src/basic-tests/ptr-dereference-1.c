/*
 * Simple alias check
 * Author: Sen Ye
 * Date: 06/09/2013
 */

int main()
{
	int a, b, *c, *d;

	c = &a;
	d = &a;
	c = &b; // b

	// In LLVM, every declared variable is address-taken
	// accessed via pointers through loads/stores
	// c here is loaded from the same memory on LLVM's partial SSA form
	
	return 0;
}
