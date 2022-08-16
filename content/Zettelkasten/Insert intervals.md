---
title: "Insert intervals "
draft: false
---
# Insert intervals
Question: 
- given list of sorted non-overlapping intervals, insert an interval

Solution:
- insert to the end of the list and run the same code for [[Merge intervals]]

```
intervals.push_back(newInterval);
        
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
1. 

---
status:
date: 2021-11-11
tags: [[Leetcode]], [[Merge intervals]]
