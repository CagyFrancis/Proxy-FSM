#include <stdlib.h>

typedef char ElemType;
typedef struct TreeNode
{
	ElemType data;
	struct TreeNode *left;
	struct TreeNode *right;
} TreeNode;

void foo(TreeNode *root)
{
	TreeNode *node1 = (TreeNode *)malloc(sizeof(TreeNode));
	TreeNode *node2 = (TreeNode *)malloc(sizeof(TreeNode));

    root->left = node1;
    root->right = node2;
}

int main()
{
    TreeNode root;
    TreeNode *p;

    foo(&root);

    p = root.left; // p
    return 0;
}