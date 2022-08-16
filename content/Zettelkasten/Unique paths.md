---
title: "Unique paths "
draft: false
---
# Unique paths
Problem:

Solution:

Implementation:
```c++
int uniquePaths(int m, int n) {
    int dp[m];
    fill(dp, dp + m, 1);
    for (int j = 1; j < n; ++j)
        for (int i = 1; i < m; ++ i)
            dp[i] = dp[i] + dp[i-1];
    return dp[m - 1];
}
```
## References
1. 

---
satus: #🟦 #🌞
date: 2021-11-24
tags: [[Programming question]], [[Leetcode]]
