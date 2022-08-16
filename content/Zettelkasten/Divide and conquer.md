---
title: "Divide and conquer"
draft: false
---
# Divide and conquer
Dividing problems which scale worse than linearly in proportion to input problems s.t. the sub problems we solve are smaller and then use an efficient merge routine to combine subproblems. 
- this allows us to avoid performing the main problem computation on large input


Examples:
- [[Closest two points in 2D]]
- [[Karatsuba multiplication]]
- [[Multiplying matrices]]
- [[Convex hull problem]]

There is a common theme with multiplication of large integers and matrices.
- divide up the problem and try to eliminate one (or more) of the required sub problems
- for example in the addition we removed the requirement to calculate one of the multiplications bringing down the exponent from 2 to $\log_2{3}$

### References
1. 

---
status: #🌱 
date: 2022-01-21
tags: [Algorithms - CS 341](Zettelkasten/Algorithms%20-%20CS%20341.md), [Algorithms](Algorithms)