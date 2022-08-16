---
title: "Maximum depth of a binary tree "
draft: false
---
# Maximum depth of a binary tree
Problem:
- return maximum depth of a binary tree

Solution:
- dfs and save biggest depth

Implementation:
```c++
int ans = 0; 
void dfs(TreeNode* cur, int d) { 
	if (cur->left) dfs(cur->left, d+1);
	if (cur->right) dfs(cur->right, d+1);
	ans = max(ans, d);
}
int maxDepth(TreeNode* root) {
	if (!root) return 0;
	dfs(root, 1);
	return ans;
}
```
## References
1. https://leetcode.com/problems/maximum-depth-of-binary-tree/

---
satus: #🟦 #🌞
date: 2021-11-28
tags: [[Programming question]], [[Leetcode]], [[Leetcode easy]]
