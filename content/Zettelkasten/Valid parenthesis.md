---
title: "Valid parenthesis "
draft: false
---
# Valid parenthesis
Problem: check input of ( { \[  are all matched and closed

Solution:
- insert opening braces into stack
- pop stack on closing brace and check it matches
	- if stack is empty return false
- if stack is not empty at the end return false

Implementation:
```c++
stack<char> st;
for (auto c : s) {
	if (c == ')') {
		if (st.size() == 0) return false;
		char t = st.top();
		if (t != '(') return false;
		st.pop();
	} else if (c == '}') {
		if (st.size() == 0) return false;
		char t = st.top();
		if (t != '{') return false;
		st.pop();
	} else if (c == ']') {
		if (st.size() == 0) return false;
		char t = st.top();
		if (t != '[') return false;
		st.pop();
	} else {
		st.push(c);
	}
}
if (st.size() != 0) return false;
return true;
```
## References
1. https://leetcode.com/problems/valid-parentheses/submissions/

---
status: #🟦 
date: 2021-11-09
tags: [[Programming question]], [[Leetcode]], [[Stack]]
