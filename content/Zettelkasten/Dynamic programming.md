---
title: "Dynamic programming "
draft: false
---
# Dynamic programming

## Name meaning
Dynamic programming is named because some guy wanted to hide the fact he was working on some research
- it was chosen as a cool name, it has no real reason to be called dp

[[Recursive algorithm | Recrusive algorithm design]]

## DP concept
DP is recursion with memoization
- recursively solving problems only once by saving repeats

DP can be sometimes seen as a local brute force method where we are checking all possible options locally, to get the best answer globally 
- this works when local options aren't impacted by options down the line
- example: [[Bowling problem]]

### General steps
- what are the subproblems
- formula for solving a subproblem in terms of smaller ones
- order of solving subproblems

## Constructing optimal binary search trees
O(n^3) -> we try each root k and then we have a table DP\[n, n\] which has the optimal subtree cost for binary tree containing elements i..j 

## References
1. mit lectures: https://www.youtube.com/watch?v=OQ5jsbhAv_M&t=158s
2. new mit lectures: https://www.youtube.com/watch?v=r4-cftqTcdI
---
status: #🌱 #
date: 2021-11-14
tags: [[Algorithms]]
