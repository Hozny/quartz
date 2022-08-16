---
title: "Binary tree maximum path sum "
draft: false
---
# Binary tree maximum path sum
Problem: Find the maximum path sum in a binary tree

Solution:
- at any node, best sum fromt this node is 
	- max left path: max(0, left-path-max) 
	- max right path: max(0, right-path-max)
	- node max = node.value + max(left, right)

Implementation:
```c++
int ans = INT_MIN;
int dfs(TreeNode *root) {
	if (!root) return 0;
	int left = max(0, dfs(root->left));
	int right = max(0, dfs(root->right));
	ans = max(root->val + left + right, ans);
	return root->val + max(left, right);
}
int maxPathSum(TreeNode* root) {
	dfs(root);
	return ans;
}
```

## References
1. 

---
satus: #🟦 #🌞
date: 2021-12-01
tags: [[Programming question]], [[Leetcode]], [[depth first search]]
