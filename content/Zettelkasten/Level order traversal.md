---
title: "Level order traversal "
draft: false
---
# Level order traversal
Problem:
- return level order values of a binary tree

Solution:
- bfs and save each level in a vector

Implementation:
```c++
	vector<vector<int>> lo;    
	queue<TreeNode*> q;
	q.push(root);
	while (q.size() > 0) {
		int s = q.size();
		vector<int> temp;
		for (int i = 0; i < s; ++i) {
		   TreeNode* cur = q.front(); 
		   q.pop(); 
		   if (cur != nullptr) {
			   temp.push_back(cur->val);
			   q.push(cur->left);
			   q.push(cur->right);
		   }
		}
		if (temp.size() > 0)
			lo.push_back(temp);
	}
	return lo;
```
## References
1. https://leetcode.com/problems/binary-tree-level-order-traversal

---
satus: #🟦 #🌞
date: 2021-11-28
tags: [[Programming question]], [[Leetcode]], [[Leetcode medium]]
