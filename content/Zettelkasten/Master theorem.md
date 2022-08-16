---
title: "Master theorem"
draft: false
---
# Master theorem
![](Assets/Pasted%20image%2020220116161559.png)

Rough proof idea:
![](Assets/Pasted%20image%2020220116162804.png)
- notice each level has a denominator of $b^k$ and coeffcient $a$
	- if $a < b^k$ then each level is getting exponentially smaller than the previous level. And so the highest level dominates (i.e, O(n^k))
	- if $a > b^k$ then each level is getting bigger and the last level dominates

![](Assets/Pasted%20image%2020220116163225.png)
## References
1. 

---
status: #🌱 
date: 2022-01-16
tags: [Algorithms - CS 341](Zettelkasten/Algorithms%20-%20CS%20341.md), [Algorithms](Algorithms)KJ