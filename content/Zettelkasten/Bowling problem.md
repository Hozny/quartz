---
title: "Bowling problem "
draft: false
---
# Bowling problem
Problem: List of bowling pins with numeric scores, you can hit a bowling pin to get it's points or hit two adjacent ones to get their product

Solution:
This is a maximization problem where we want to maximize over possible combinations
- notice we can brute force locally (if we know max scores of a suffix we can find max solution locally)

Using the [[Recursive algorithm]] design:
1. **Subproblem:** DP(i) = max score possible with pins `i, ..., n - 1`
2. **Original problem:** DP(0)
3. **Relate:** DP(i) = max{DP(i+1), DP(i+1) + $v_i$,  DP(i+2) + $v_i \cdot v_{i+1}$}
4. **Topological:** Decreasing i (smaller i depends on larger i)
5. **Base:** DP(n) = 0

## References
1. mit lecture: https://www.youtube.com/watch?v=r4-cftqTcdI

---
status: #🟦
date: 2021-11-23
tags: [[Recursive algorithm]], [[Programming question]]
