---
title: "Feasibility problem"
draft: false
---
# Feasibility problem

Problem: Given $P = \{ x : Ax \leq b \}$ solve if $P = \emptyset$ or find $\bar{x} \in P$

Size of an instance of this problem is 
$$size(I) \leq O(nm \log \alpha)$$
- where $\alpha$ is the largest value in $A, b$

If we have a solution the feasibility problem we can solve LP (or probably most types of optimization problems) easily. 

### Binary search idea
Solve feasibility for 
Find $L, U$ such that optimal $z^* \in [L, U]$ by solving feasibility for:
$$x \in P \cup \{ x : c^T x \geq \frac{L + U}{2} \}$$
- if YES: $L \leftarrow \frac{L + U}{2}$
- if NO:   $U \leftarrow \frac{L + U}{2}$

### Solving with dual idea
Solve feasibility for the dual and primal combined
$$\{(x, y) : Ax \leq b, A^Ty = c, y\geq0, c^Tx=b^Ty$$
- by [[Weak duality]] we have that a feasible solution to this is an optimal to the Primal and Dual

Anki flash cards: [[Anki/Optimization]]
### References
1. 

---
status: #🌱             
date: 2022-12-10           
tags: [[Zettelkasten/Optimization]] 

