---
title: "Same tree "
draft: false
---
# Same tree
Problem:
- check two binary trees are the same

Solution:
- dfs check each one node is equal

Implementation:
```c++
bool dfs(TreeNode* p, TreeNode* q) {
	if (p == nullptr && q == nullptr) return true;
	if (p == nullptr || q == nullptr) return false;
	if (p->val == q->val) 
		return dfs(p->left, q->left) && dfs(p->right, q->right);
	return false;
}

bool isSameTree(TreeNode* p, TreeNode* q) { 
	return dfs(p, q);
}
```

## References
1.  https://leetcode.com/problems/same-tree

---
satus: #🟦 #🌞
date: 2021-11-28
tags: [[Programming question]], [[Leetcode]], [[Leetcode easy]]
