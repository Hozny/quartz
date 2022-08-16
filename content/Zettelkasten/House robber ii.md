---
title: "House robber ii "
draft: false
---
# House robber ii
Problem:

Solution:
- handle case at i == 0, send use two different memos
Implementation:
```c++
int dp(int i, int e, vector<int> &memo, vector<int> &memo2, vector<int> &nums) {
	if (i >= e) return 0;

	int &ret = memo[i];
	if (ret != -1) return ret;

	if (i == 0) {
	ret = max(nums[i] + dp(i+2, nums.size() - 1, memo2, memo2, nums), dp(i+1, nums.size(), memo, memo, nums));
	} else { 
	ret = max(nums[i] + dp(i+2, e, memo, memo, nums), dp(i+1, e, memo, memo, nums));
	}

	return ret;
}
int rob(vector<int>& nums) {
	vector<int> memo(nums.size() + 1, -1);
	vector<int> memo2(nums.size() + 1, -1);
	return dp(0, 2, memo, memo2, nums);
}
```
## References
1. 

---
satus: #🟦 #🌞
date: 2021-11-24
tags: [[Programming question]], [[Leetcode]]
