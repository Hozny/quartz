---
title: "Geometric representation of linear programming"
draft: false
---
# Geometric representation of linear programming
 ## Geometric representation of linear programming
 ### in 2D 
 minimize $-x_1 - x_2$ 
 - notice that the line $z = -x_1 - x_2$ is perpendicular to the vector $c = (-1, -1)$
	 - the set of values with the same objective value is a line
	 - increasing or decreasing $z$ is equivalent to moving the line in the direction of $c$
		 - if we are maximizing then we want to move it in the direction $c$
		 - if minimizing then we move in direction of $-c$
 - Notice the optimal solution is a "corner"
		 
In 3D it is the same but the set of points with the same objective value is a plane. Our goal is to move the plane in the direction we're optimizing.

### Visualizing standard form
for the form $Ax = b$ let A be m by n with m <= n
- we have each of the m constraints removing a "degree of freedom" from what x can be
- so x can span some (n - m) dimension subspace

![[Pasted image 20220915210154.png]]

### References
1. 

---
status: #🌱             
date: 2022-09-20           
tags: [[]]           