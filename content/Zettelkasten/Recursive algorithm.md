---
title: "Recursive algorithm "
draft: false
---
# Recursive algorithm

## Recursive algorithm design
1. Define a subproblem (state what it computes not just how to)
2. Relate subproblems recursively
3. Topological order to make sure subproblem dependencies are acyclic
4. Base cases of the recursion
5. Solve original problem via subproblem

## Defining subproblems
If input is a **sequence** some good options for subproblems are:
- prefixes a[:i]
- suffixes a[i:]
- substrings a[i:j]

If **multiple inputs** good options for subproblems are:
- multiply subproblem spaces
	- e.g, (number of suffixes of A $\times$ number of suffixes of B)

## References
1. 

---
status: #🌱 
date: 2021-11-23
tags: [[Dynamic programming]]
