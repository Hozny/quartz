---
title: "Linear programming definition"
draft: false
---
# Linear programming definition
## General form
$$
\begin{align*}
\text{min } c'x  \\
\text{subject to }  Ax \geq b \\
\end{align*}
$$


## Standard form
$$
\begin{align*}
Ax = b \\
x \geq 0
\end{align*}
$$
- The standard form can be thought of as each $A_i$ is some "resource" vector and we use non-negative amounts $x_i$ of each resource to build the "optimal"/target vector $b$
- This is a special case of the general form 

The general form of a linear programming problem can be reduced to standard form.

## Reducing general form to standard form
Two steps:
1. Elimination of free variables (variables that can be negative)
	- $x_i$ replaced with $x_i^+ - x_i^-$ with $x_i^+, x_i^- \geq 0$
2. Adding slack or surplus variables. We introduce a new variable to allow equality
	- $a_{ij}x_i \leq b_i \Rightarrow a_{ij}x_i + s_i = b_i$ and subtract a surplus for $\geq$

[[Reducing linear programming general form to standard equality form]]

### References
1. 

---
status: #🌱             
date: 2022-09-20           
tags: [[CO 255 Intro to optimization]], [[Linear programming]]           