---
title: "Minimum window substring "
draft: false
---
# Minimum window substring
Problem: Minimum substring which contains all letters of another string t

Solution:
- sliding window, iterate right till all letters are found
- iterate left as much as possible without losing required letter else iterate right

Implementation:
```c++
// keep track of kjk
map<char, int> m, m2;
for (auto c : t) m[c]++;

int count = 0; int l = 0; int r = 0;
int ans = INT_MAX;
int al = -1;
while (r < s.size()) {
	if (m.count(s[r]) != 0 && m2[s[r]] < m[s[r]]) count++;
	m2[s[r]]++;
	while (l < r && m2[s[l]] > m[s[l]]) { 
		if (m[s[l]] > 0) m2[s[l]]--;
		l++; 
	}
	if (count >= t.size()) {
		if (r - l + 1 < ans) {
			ans = r - l + 1;
			al = l;
		}
	}
	cout << l << " " << r  << " " << count << endl;
	r++;
}
if (ans == INT_MAX) return "";
return s.substr(al, ans);
```

## References
1. 

---
satus: #🟦 #🌞
date: 2021-11-27
tags: [[Programming question]], [[Leetcode]]
