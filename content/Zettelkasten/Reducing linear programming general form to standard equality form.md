---
title: "Reducing linear programming general form to standard form"
draft: false
---
# Reducing linear programming general form to standard form

Theorem: Any LP can be written in SEF.

## Reducing general form to standard form
Two steps:
1. Elimination of free variables (variables that can be negative)
	- $x_i$ replaced with $x_i^+ - x_i^-$ with $x_i^+, x_i^- \geq 0$
2. Adding slack or surplus variables. We introduce a new variable to allow equality
	- $a_{ij}x_i \leq b_i \Rightarrow a_{ij}x_i + s_i = b_i$ and subtract a surplus for $\geq$

### References
1. 

---
status: #🌱             
date: 2022-09-20           
tags: [[Linear programming]]           