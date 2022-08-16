---
title: "Container with most water "
draft: false
---
# Container with most water
Question: Given heights\[n\], find height\[i\] and height\[j\] which would hold most water (biggest area)

Solution: 
- Greedily use two pointers starting at opposite ends, iterate the one with lesser height

Concept to reach solution:
- Need to think [[Greedily eliminating cases which cannot possibly have a solution]]
	- We have already found the maximum area for the minimum height between i and j 
	- We start with the maxium width and reduce, so future pairs are less width
	- Since it's the minimum of the two; any other height paired with it will be found at a lesser width, and hence a lesser area

Implementation:
```c++
int st, mx = 0; int en = height.size() - 1;
while (st != en) {
	int mn = min(height[st], height[en]);
	int a = mn * (en - st);
	mx = max(mx, a);
	if (height[st] < height[en]) st++;
	else en--;
}
return mx;
```

Proof:
```
let our current range be [i, j] 
let A be the area of [i, j] 

Assume there exists sub-range [i', j'] != [i, j] s.t. A' > A 
Assume h[i] < h[j] 

Notice that i (is not in) [i', j'] 
since len([i', j']) < len([i, j]) 
- if i = i' -> min(h[i'], h[j']) <= min(h[i]) by (h[i] < h[j]) 
- if i = i' -> A' = h[i] * len([i, j']) < h[i] * len([i, j]) = A 
- hence i != i' -> [i', j'] is in [i + 1, j] 

Hence i not in [i', j'] -> [i', j'] in [i+1, j] 
Hence we eliminate i greedily
```

## References
1. https://leetcode.com/problems/container-with-most-water/

---
status: #🟦 #🌞 
date: 2021-11-09
tags: [[Programming question]], [[Two pointer]], [[Greedy algorithms]], [[Leetcode]]
