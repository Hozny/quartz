---
title: "Determine if string can be segmented into dictionary words (Word Break) "
draft: false
---
# Determine if string can be segmented into dictionary words (Word Break)
Problem: Given a dictionary of words return true if a string s can be broken into the words

Solution:
Dynamic programming solution O(n^2)
- sub problem: suffix starting i is breakable into dictionary words
- relation: if substring s[i:j] is in dictionary of words and dp[j] == True then dp[i] = True
	- if some prefix of the suffix starting at i is a dictionary word, and the position after this prefix can be broken into words then the prefix starting at i can also be broken down
- topology: smaller index rely on bigger one
- base case: dp[len(s)] = true
- original problem: dp[0]

Implementation:
```c++
// subproblem:   dp[i] = suffix starting at i is breakable 
// relationship: dp[i] = true if s[i:j] in wordDict and dp[j] = True, for any j > i 
// topology:     small i depends on larger i 
// base case:    dp[n] = true
// original:     dp[0]
bool dp(int i, string &s, vector<int>& memo, set<string>& d) {
	if (i == s.size()) return 1;

	int &ret = memo[i];
	if (ret != -1) return ret;

	ret = 0;
	for (int j = i + 1; j <= s.size(); ++j) {
		if (d.count(s.substr(i, j-i)) != 0 && dp(j, s, memo, d) == 1) {
			ret = 1;
			break;
		}
	}
	return ret;
}

bool wordBreak(string s, vector<string>& wordDict) {
	set<string> d;
	for (auto x : wordDict) d.insert(x);
	vector<int> memo(s.size() + 1, -1);
	memo[s.size()] = 1;

	int ans = dp(0, s, memo, d);
	return ans;
}
```

## References
1. https://leetcode.com/problems/word-break/

---
satus: #🟦 #🌞
date: 2021-11-23
tags: [[Programming question]], [[Leetcode]], [[Dynamic programming]]
