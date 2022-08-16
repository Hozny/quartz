---
title: "Word search "
draft: false
---
# Word search
Problem: Return true if a word exists in a grid (can be formed sequentially in any adjacent direction)

Solution:
- run a dfs on each cell checking for the word
- after visiting a letter temporarily switch board[i][j]='\*' then switch it back to ensure revisting the cell doesn't count

Implementation:
```c++
vector<vector<char>> b;
int dx[4] = {1, -1, 0, 0};
int dy[4] = {0, 0, 1, -1};
bool dfs(int i, int j, int d, string& s) {
	if (i < 0 || i >= b.size()) return false;
	if (j < 0 || j >= b[i].size()) return false;
	if (d == s.size() - 1 && s[d] == b[i][j]) return true;

	if (b[i][j] != s[d]) return false;
	bool ans = false;
	char c = b[i][j];
	b[i][j] = '*';
	for (int k = 0; k < 4; ++k) {
	   ans = ans || dfs(i + dx[k], j + dy[k], d+1, s); 
	}
	b[i][j] = c;
	return ans;
}

bool exist(vector<vector<char>>& board, string word) {
	b = board;
	for (int i = 0; i < board.size(); ++i) {
		for (int j = 0; j < board[i].size(); ++j) {
			if (dfs(i, j, 0, word)) {cout << i << " " << j << endl; return true;}
		}
	}
	return false;
}
```
## References
1. 

---
satus: #🟦 #🌞
date: 2021-11-27
tags: [[Programming question]], [[Leetcode]]
