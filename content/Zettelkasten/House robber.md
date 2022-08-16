---
title: "House robber "
draft: false
---
# House robber
Problem: 

Solution:

Implementation:
```c++
int dp(int i, vector<int> &memo, vector<int> &nums) {
	if (i >= nums.size()) return 0;

	int& ret = memo[i];
	if (ret != -1) return ret;

	ret = max(nums[i] + dp(i+2, memo, nums), dp(i+1, memo, nums));
	return ret;
}

int rob(vector<int>& nums) {
	// subproblem: dp[i] = max profit of suffix starting at
	// relation:   dp[i] = max(a[i] + dp[i+2], dp[i+1])
	// topology:   smaller i depends on larger i
	// base case:  dp[n] = 0
	// problem:    dp[0] 
	vector<int> memo(nums.size()+1, -1);
	return dp(0, memo, nums);
}
```
## References
1. https://leetcode.com/problems/house-robber/submissions/

---
satus: #🟦 #🌞
date: 2021-11-24
tags: [[Programming question]], [[Leetcode]]
