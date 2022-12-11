---
title: "Two phase simplex"
draft: false
---
# Two phase simplex

If we don't have an initial BFS to our LP we solve an auxiliary (AUX) to find any BFS to our LP (BFS is just tight at $m$ constraints not necessarily an optimal point). 

$$
\begin{align*}
\max &- \sum\limits_{i=1}^m s_i \\
Ax - Is &= b \\
x, s &\geq 0
\end{align*}
$$
- Our initial BFS for AUX is $s = b, x = 0$

Recall our LP is in SEF so $Ax = b$ is our constraint, so if AUX doesn't have a solution with $s = 0$ then we don't have any feasibly $Ax = b$.
- hence if $\bar{s} \neq 0$ we have LP infeasible

Otherwise we take $\bar{x}$ as an initial BFS and apply [[Simplex method]] on our original LP.   

### References
1. 

---
status: #🌱             
date: 2022-12-07           
tags: [[CO 255 Intro to optimization]], [[Simplex method]]           