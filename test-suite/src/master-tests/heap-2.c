#include <stdlib.h>

typedef char ElemType;
typedef struct TreeNode
{
	ElemType data;
	struct TreeNode *left;
	struct TreeNode *right;
} TreeNode;

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

TreeNode *UseTree(TreeNode *root)
{
	return root;
}

int main()
{
	TreeNode *o1, *o2;
	TreeNode *v1, *v2;
	TreeNode *p;

	o1 = CreateTree1();
	o2 = CreateTree2();

	v1 = UseTree(o1);
	v2 = UseTree(o2);

	p = v1->left->left;
	p = v2->right->right;

	return 0;
}