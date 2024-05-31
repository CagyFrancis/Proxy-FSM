#include <stdlib.h>

typedef char ElemType;
typedef struct LinkNode
{
	ElemType data;
	struct LinkNode *link;
} LinkNode;

// 清空单链表
void ClearList(LinkNode *head)
{
	LinkNode *p = head->link;
	while (p != NULL)
	{
		p = p->link;
		free(head->link);
		head->link = p;
	}
}

// 创建单链表
void CreateList(LinkNode *head, ElemType a[], int n)
{
	LinkNode *tmp;
	// 清空链表
	ClearList(head);
	// 数组转链表
	for (int i = 0; i < n; i++)
	{
		tmp = (LinkNode *)malloc(sizeof(LinkNode));
		tmp->data = a[i];
		tmp->link = head->link;
		head->link = tmp;
	}
}

// 判空
int IsEmpty(LinkNode *head)
{
	return head->link == NULL;
}

// 计算链表长度
int ListLength(LinkNode *head)
{
	LinkNode *p = head->link;
	int i = 0;
	while (p != NULL)
	{
		i++;
		p = p->link;
	}
	return i;
}

// 按索引获取链表元素
int GetElem(LinkNode *head, int idx, ElemType *e)
{
	LinkNode *p = head->link;
	int i = 1;
	// 判断索引错误
	if (idx <= 0)
		return 0;
	// 搜索链表元素
	while (p != NULL && i < idx)
	{
		i++;
		p = p->link;
	}
	// 返回错误类型
	if (p == NULL)
		return 0;
	else
	{
		*e = p->data;
		return 1;
	}
}

// 按值获取链表索引
int LocateElem(LinkNode *head, ElemType e)
{
	LinkNode *p = head->link;
	int i = 1;
	// 搜索链表元素
	while (p != NULL && p->data != e)
	{
		i++;
		p = p->link;
	}
	// 返回错误类型
	if (p == NULL)
		return 0;
	else
		return i;
}

// 链表插入元素
int InsertElem(LinkNode *head, int idx, ElemType e)
{
	LinkNode *p = head, *tmp;
	int i = 0;
	// 判断索引错误
	if (idx <= 0)
		return 0;
	// 遍历数组元素
	while (p != NULL && i < idx - 1)
	{
		i++;
		p = p->link;
	}
	// 返回错误类型
	if (p == NULL)
		return 0;
	else
	{
		// 插入节点
		tmp = (LinkNode *)malloc(sizeof(LinkNode));
		tmp->data = e;
		tmp->link = p->link;
		p->link = tmp;
		return 1;
	}
}

// 按索引删除元素
int DeleteElem(LinkNode *head, int idx)
{
	LinkNode *p = head, *tmp;
	int i = 0;
	// 判断索引错误
	if (idx <= 0)
		return 0;
	// 搜索链表元素
	while (p != NULL && i < idx - 1)
	{
		i++;
		p = p->link;
	}
	// 返回错误类型
	if (p == NULL || p->link == NULL)
		return 0;
	else
	{
		// 删除节点
		tmp = p->link;
		p->link = tmp->link;
		free(tmp);
		return 1;
	}
}

// 主函数
int main()
{
	LinkNode list = {'\0', NULL};
	LinkNode *p;
	ElemType e = '\0';
	ElemType a[7] = "abcdefg";

	CreateList(&list, a, 7);
	p = list.link->link->link->link;

	return 0;
}