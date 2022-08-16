---
title: "Longest common subsequence "
draft: false
---
# Longest common subsequence

Problem: Given two sequences find longest common subsequence

## Solution
Using [[Recursive algorithm]]
1. **Subproblem:** LCS of some suffix of A and some suffix of B (using indices i, j)
	- LCS(i, j) = LCS(A[i:], B[j:])
2. **Relate:** 
	- if A[i] == B[i] : 1 + L(i+1, j+1)
	- else: max(L(i+1, j), L(i, j+1))
1. **Topological**  L(|A|, j) = 0 = L(i, |B|)
2. **Base case** 
3. **Original** problem via subproblem

Implementation:
```c++
// subproblem: lcs(i, j) = lcs of suffix t1[i:] and t2[j:]
// relation:   lcs(i, j) = if t1[i] == t[j] -> 1 + lcs(i+1, j+1)
//                         else max(lcs(i+1, j), lcs(i, j+1))
// topology:   small i depends on large i
// base case:  lcs(len(t1), j) == 0 == lcs(i, len(t2))
// original:   lcs(0, 0)

int lcs(int i, int j, vector<vector<int>> &memo, string& t1, string& t2) {
	if (i == t1.size() || j == t2.size()) return 0;

	int& ret = memo[i][j];
	if (ret != -1) return ret;

	if (t1[i] == t2[j]) ret = 1 + lcs(i+1, j+1, memo, t1, t2);
	else {
		ret = max(lcs(i+1, j, memo, t1, t2), lcs(i, j+1, memo, t1, t2));
	}

	return ret;
}
int longestCommonSubsequence(string text1, string text2) {
	
	vector<vector<int>> memo(text1.size() + 1, vector<int>(text2.size() + 1, -1));
	return lcs(0, 0, memo, text1, text2);
}
```

## References
1. 

---
status:
date: 2021-11-23
tags: [[Leetcode]], [[Programming question]], [[Dynamic programming]]
