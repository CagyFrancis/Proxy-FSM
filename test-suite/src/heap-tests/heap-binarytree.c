/* 二叉树 */
#include <stdlib.h>

typedef char ElemType;
typedef struct TreeNode
{
	ElemType data;
	struct TreeNode *left;
	struct TreeNode *right;
} TreeNode;

void FreeTree(TreeNode *root)
{
	if (root == NULL)
		return;
	FreeTree(root->left);
	FreeTree(root->right);
	free(root);
}

TreeNode *CreateTree1()
{
	TreeNode *node1 = (TreeNode *)malloc(sizeof(TreeNode));
	TreeNode *node2 = (TreeNode *)malloc(sizeof(TreeNode));
	TreeNode *node3 = (TreeNode *)malloc(sizeof(TreeNode));
	TreeNode *node4 = (TreeNode *)malloc(sizeof(TreeNode));

	node1->left = node2;
	node1->right = node3;
	node2->left = node4;
	node2->right = NULL;
	node3->left = NULL;
	node3->right = NULL;
	node4->left = NULL;
	node4->left = NULL;

	return node1;
}

TreeNode *CreateTree2()
{
	TreeNode *node1 = (TreeNode *)malloc(sizeof(TreeNode));
	TreeNode *node2 = (TreeNode *)malloc(sizeof(TreeNode));
	TreeNode *node3 = (TreeNode *)malloc(sizeof(TreeNode));
	TreeNode *node4 = (TreeNode *)malloc(sizeof(TreeNode));

	node1->left = node2;
	node1->right = node3;
	node2->left = NULL;
	node2->right = NULL;
	node3->left = NULL;
	node3->right = node4;
	node4->left = NULL;
	node4->right = NULL;

	return node1;
}

int main()
{
	TreeNode *x, *y;
	TreeNode *p;

	x = CreateTree1();
	y = CreateTree2();

	p = x->left->left;   // malloc 26
	p = y->right->right; // malloc 45

	FreeTree(x);
	FreeTree(y);
	return 0;
}