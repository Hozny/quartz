---
title: "Coin change "
draft: false
---
# Coin change
Problem: given list of coins minimum number of coins needed to make amount, or -1 if impossible

Solution:
- dp solution
- min of amount = 1 + min(amount - coins[i]) for all i
- note: some are going to be impossible, so for implemntation need to differentiate between already solved impossible and not solved
	- i.e, don't use -1 for both impossible and not solved

Implementation:
```c++
int go(vector<int>& coins, vector<int>& memo, int amount) { 
	if (amount < 0) return -1;
	if (amount == 0) return 0;
	int &ret = memo[amount];
	if (ret != -2) return ret;

	int ans = 1e9;
	for (int i = 0; i < coins.size(); ++i) {
		int t = go(coins, memo, amount - coins[i]);
		if (t != -1)
			ans = min(ans, 1 + go(coins, memo, amount - coins[i]));
	}
	if (ans == 1e9) ans = -1;
	ret = ans;
	return ret;
}
int coinChange(vector<int>& coins, int amount) {
	vector<int> memo(amount + 1, -2);
	return go(coins, memo, amount);
}
```
## References
1. https://leetcode.com/problems/coin-change/submissions/

---
satus: #🟦 #🌞
date: 2021-11-14
tags: [[Programming question]], [[Leetcode]], [[Dynamic programming]]
