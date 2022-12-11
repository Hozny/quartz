---
title: "Fundamental theorem of linear programming"
draft: false
---
# Fundamental theorem of linear programming

Let some LP problem be $\max c^Tx$ such that $Ax \le b$. Then there are 3 possible outcomes.
1. Infeasible
2. Unbounded
3. There exists an optimal solution

## Proof
Assume LP is neither infeasible nor unbounded (otherwise we are done).

If n = 1, then (LP) has an optimal solution
- LP is of form $\max c' x$ s.t. $a'x \leq b'$
	- $c' x$ is monotonic 
	- LP is not unbounded so we must have $a' x \leq b$ with solution $x = \frac{a'}{b}$ otherwise if $x' = x + \delta$ is optimal then we can go $x'' = x + 2 \cdot \delta$ since cost is monotonic. 

Define (LP') as $z - c^T x \le 0, Ax \le b$ with $\max z$

Notice LP'  is neither infeasible nor unbounded.
- If it's unbounded clearly $z \le c^T x$, so LP is also unbounded (contradiction)
- Take some feasible $\bar{x}$ then $z = c^T \bar{x}$ is a feasible soln.

If (x', z') is an optimal solution to LP' then x' is optimal to LP
- Assume there's some $x''$ that is better than $x'$ then z'' = $C^Tx''$ is greater than z' since $z' \le c^T x' < c^T x'' = z''$ a contradiction since $z'$ is optimal and so $x'$ is optimal

Apply Fourier Motzkin to $\{(x, z) : z - c^T x \le 0, Ax \le b\}$ until we have $\{ z \in \mathbb{R} : A'z \le b^1 \}$
- This is feasible and bounded
- Proof??? (I swear that's the whole point of Fourier Motzkin - optimal soln to n-1 ==> optimal soln to n)

Thus we find optimal solution to (x', z') and hence an optimal solution x for LP.

Otherwise define 
### References
1. 

---
status: #🌱             
date: 2022-09-20           
tags: [[Linear optimization]], [[Optimization]]           