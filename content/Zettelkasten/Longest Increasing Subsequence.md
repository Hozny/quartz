---
title: "Longest Increasing Subsequence "
draft: false
---
# Longest Increasing Subsequence
Problem:  Find the longest increasing subsequence

This can be reduced to [[Longest common subsequence]] by matching sequence against its sorted version still O(n^2)

## Quadratic solution
Solution:
- O(n^2) solution is dp with subproblem: dp[i] is the longest increasing subsequence of suffix starting at i
```
// subproblem: l(i) = longest increasing subsequence starting at i (includes i)
// relation:   l(i) = 1 + l(j) if (j > i, a[j] > a[i], j < n)
// topology:   descending i (smaller i depends on j)
// base case:  l(n) = 0
// original:   l(0)
```

Implementation:
```c++
int lis(int i, vector<int> &memo, vector<int> &nums) {
	if (i >= nums.size()) return 0;

	int& ret = memo[i];
	if (ret != -1) return ret;

	ret = 1;
	for (int j = i + 1; j < nums.size(); ++j)
		if (nums[j] > nums[i]) ret = max(ret, 1 + lis(j, memo, nums));

	return ret;
}

int lengthOfLIS(vector<int>& nums) {
	// subproblem: l(i) = longest increasing subsequence starting at i (includes i)
	// relation:   l(i) = 1 + l(j) if (j > i, a[j] > a[i], j < n)
	// topology:   descending i (smaller i depends on j)
	// base case:  l(n) = 0
	// original:   l(0)
	vector<int> memo(nums.size() + 1, -1);
	int ans = -1;
	for (int i = 0; i < nums.size(); ++i)
		ans = max(ans, lis(i, memo, nums));
	return ans;
}
```

## n log n solution
There is a way to optimize the dp to binary search at recursive steps rather than O(n) scan

## References
1. https://leetcode.com/problems/longest-increasing-subsequence/submissions/

---
satus: #🟦 #🌞
date: 2021-11-23
tags: [[Programming question]], [[Leetcode]], [[Dynamic programming]]
