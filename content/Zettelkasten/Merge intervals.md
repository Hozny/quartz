---
title: "Merge intervals "
draft: false
---
# Merge intervals
Question: 
- given list of intervals merge them so that there is a minimum number of them
- (combine overlapping segments)


Solution: 
- sort list of intervals by first
- create new list of intervals and greedily merge if interval.start <= end of the last item in list being built
- if not, insert new item to the list

```c++
sort(intervals.begin(), intervals.end());
vector<vector<int>> ret;
int c = -1;
for (auto i : intervals) {
	if (c != -1 && i[0] <= ret[c][1]) {
		ret[c][1] = max(ret[c][1], i[1]);
	} else {
		ret.push_back(i);
		++c;               
	}
}
return ret;
```

## References
1. https://leetcode.com/problems/merge-intervals/

---
status:
date: 2021-11-11
tags: [[Leetcode]], [[Greedy algorithms]]
