---
title: "Linear programming problems with absolute values"
draft: false
---
# Linear programming problems with absolute values
## Problems involving absolute values
We solve them by either
- introducing $x^+ - x^- = x$ 
- ![[Pasted image 20220914211727.png]]
	- it is not clear that this produces the optimal solution
	- our intention is to have one of the + or - $x_i$ equal to 0
	- if we restrict c to positive then it is clear that one of $x_i^+, x_i^-$ them will be 0
		- note that c must be positive for the cost function to be convex
- minimize $z$ s.t $x \leq z$ and $-x \leq z$
- ![[Pasted image 20220914211311.png]]

### References
1. 

---
status: #🌱             
date: 2022-09-20           
tags: [[Linear programming]], [[CO 255 Intro to optimization]]           