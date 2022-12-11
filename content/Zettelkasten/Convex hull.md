---
title: "Convex hull"
draft: false
---
# Convex hull
## Convex hull algorithms in 2D
### Incremental algorithm
- Given $H_i$ the hull of all points up until $p_{i-1}$
- Scan from $p_{i-1}$ forward clockwise to find lower bridge
	- if the previous point to $p_{i-1}$ lies above the line then we found the lower bridge, otherwise keep looking
- Scan from $p_{i-1}$ backward count-erclockwise to find upper bridge
	- looking for a point where the previous point lies below it then that is the upper bridge
#### Run time
Sorting takes O(n log n)     
Notice
- adding a point can take O(n) points
- but every point we add as an edge can only be added once to the points of convex hull, and it can also be removed once (once we remove it, it will never be seen again)
- so adding a point is O(n) amortized

### Graham's algorithm
1. Sort the points radially around some point X inside the convex hull
2. Scan from $P_1$ clockwise order, repeatedly removing the 2nd last point if it forms a reflex angle

To find X: take average of any 3 non-colinear points 
- these 3 points form a triangle and their average is inside the triangle and so it is inside the convex hull

To sort the points: Use [[Sidedness test]] to check point is to the right or left of line from X to $P_i$

### Divide and conquer
See: [[Divide and conquer]]

1. Split the points in half by a verticle line (use the median of the points)
	1. sort once at the beginning to find medians easily O(n log n)
2. Combine the two halves of convex hulls 
	1. start with a line from max x coordinate point on the left side and min x coordinate on the right side
	2. walk the bridge up until we find the upper bridge and lower bridge
		1. similar to the incremental algorithm

![[Pasted image 20220927231323.png]]
#### Runtime
- Combine step O(n)
- Sort O(n log n)
- T(n) = 2T(n / 2) + c * n = O(n log n)

## Lower bound for finding polygon of convex hull
on RAM model the convex hull is lower bound by O(n log n) because sorting can reduce to it

Map each number in a list to it's corresponding point in 2D on a parabola
![[Pasted image 20220927231815.png]]
- Note: this is on the RAM model (not the usual comparison based model) but the same lower bound holds on RAM model

## Output sensitive algorithm for convex hull
### Jarvis march
We want to express run time as function of input size, n, and output size h.
- Pick minimum x, maximum y, coordinate $p_1$
- Wrap the line around $p_1$ to find $p_2$
	- to do this we use [[Sidedness test]] to compare points O(n) to get the minimum point
	- this gives the point where all other lines are below it, then repeat this about the new point
	
Time for one wrap is O(n)
- total in worst case is O(n^2)
- as function of n and h - O(n * h)

The best algorithm for this can do this in O(n log h)

### Chan's algorithm
TODO: this algorithm needs some time to digest

# Convex Hull in 3D
### Face lattice
- Connect each higher dimensional i-face (i-dimension face) to how many things it touches
- kinda confusing
![[Pasted image 20220928003014.png]]

### Divide and conquer

### References
1. 

---
status: #🌱             
date: 2022-10-05           
tags: [[]]           