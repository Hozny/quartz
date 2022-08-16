---
title: "Interpolation"
draft: false
---
# Interpolation
Interpolate (guess a function) for a list of (x, y) pairs.
- focus of application in cs370 is on interpolations applicability to computer graphics

## Polynomial interpolation
Theorem: Given n data pairs (xi , yi), i = 1, . . . , n with distinct xi, there is a unique polynomial p(x) of degree not exceeding n − 1 that interpolates this data.
- *unisolvence theorem*

![[Pasted image 20220316093018.png]]

### Lagrange form
![[Pasted image 20220316093201.png]]
- this allows us to interpolate without solving the vadnermonde system

### Piecewise Hermite interpolation
If we want to interpolate a function and its derivative at vertain points we can set up the equations again to solve them uniquely.
![[Pasted image 20220316093750.png]]
- piecewise cubic for each interval

![[Pasted image 20220316093844.png]]

### References
1. 

---
status: #🌱 
date: 2022-03-16
tags: [[Programming]], [[Numerical Computation - CS 370]]