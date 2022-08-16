---
title: "Validate binary search tree "
draft: false
---
# Validate binary search tree
Problem: validate a given tree is a bst

Solution:
- keep track of min and max values traversing from the top
	- when going left max value should be current, min stays the same
	- when going right min value should be current, max stays the same

worse:
- in order traversal and save values then check they are sorted


Implementation:
- with additional array space 
```c++
vector<int> order;
void dfs(TreeNode* cur) {
	if (cur == nullptr) return;
	if (cur->left != nullptr) dfs(cur->left);
	order.push_back(cur->val);
	if (cur->right != nullptr) dfs(cur->right);
}

bool isValidBST(TreeNode* root) {
	dfs(root);
	bool ans = true;
	for (int i = 1; i < order.size(); ++i)
		if (order[i] <= order[i-1]) ans = false;
   return ans;
```

- using max and min instead
```c++
int dfs(TreeNode* cur, long mn, long mx) {
	if (cur == nullptr) return true;
	if (cur->val >= mx || cur->val <= mn) return false;
	bool ans = true;
	if (cur->left != nullptr) ans &= dfs(cur->left, mn, cur->val);
	if (cur->right != nullptr) ans &= dfs(cur->right, cur->val, mx);
	return ans;
}

bool isValidBST(TreeNode* root) {
   return dfs(root, (long) INT_MIN - 1, (long) INT_MAX + 1);
}
```

## References
1. https://leetcode.com/problems/validate-binary-search-tree 

---
satus: #🟦 #🌞
date: 2021-11-28
tags: [[Programming question]], [[Leetcode]]
