---
title: "3sum "
draft: false
---
# 3sum
Problem: Find 3 unique indices in array, a, s.t. a[i] + a[j] + a[k] == 0

Solution (more direct from 2sum):
- sort array
- one for loop to fix the first of the triple
- inner standard 2-sum 
Solution:
- O(n^2) solution with two points i = 0, and j = i + 1
- Iterate both i and j until they are not equal to their previous value
- taret value of -a[i] - a[j] can be found using a previously built [[Hash map]] 
	- or third pointer iterating backwards depending on target value
	
Implementation:
```c++
vector<vector<int>> ans;
if (nums.size() == 0) return ans;
sort(nums.begin(), nums.end());
if (nums[0] > 0) return ans;

map<int, int> m;
for (int i = 0; i < nums.size(); ++i) m[nums[i]] = i;

for (int i = 0; i < nums.size(); ++i) {
	for (int j = i+1; j < nums.size(); ++j) {
		int target = -nums[i] - nums[j];
		if (m.count(target) != 0 && m[target] > j)
			ans.push_back({nums[i], nums[j], target});
		while (j < nums.size() - 1 && nums[j] == nums[j+1]) ++j;
	}
	while (i < nums.size() - 1 && nums[i] == nums[i+1]) ++i;
}
return ans;
```
## References
1. https://leetcode.com/problems/3sum/discuss/?currentPage=1&orderBy=most_votes&query=

---
satus: #🟦 #🌞
date: 2021-11-09
tags: [[Programming question]], [[Two pointer]], [[Leetcode]]
