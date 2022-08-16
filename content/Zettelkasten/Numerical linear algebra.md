---
title: "Linear algebra"
draft: false
---
# Linear algebra
Solving systems of equations using [[Gaussian elimination]]


![](Assets/Pasted%20image%2020220123215417.png)
- so [Gaussian elimination](Gaussian%20elimination) factors A into product of upper and lower unit diagonal matrices
- if you save the multipliers in the lower triangular part of the matrix when performing Gaussian elimination you end up with L (A = LU factorization)

Solving linear systems computationally we perform A = LU factorization then use forward and back solves
- this allows for cheaper recomputation using different x in Ax = b
- cheaper computing $A^{-1}$ (note it is 4 times more expensive to find Ax = b using the inverse)

## LRU stability
We can have numbers approach 0 because and then because of roundoff errors 

## Partial pivoting
This allows us to decrease roundoff errors in [[Gaussian elimination]] with increased stability.
![[Pasted image 20220131202904.png]]
- This is basically a generalization of stander GE theorem (P would b identity in normal case)

## NLA conditioning
Measuring the maximum potential accuracy

### References
1. 

---
status: #🌱 
date: 2022-01-23
tags: [Numerical Computation - CS 370](Zettelkasten/Numerical%20Computation%20-%20CS%20370.md), 