---
title: "Planar sweep"
draft: false
---
# Planar sweep

Analog of sorting points on a line. It's for sorting line segments on a plane. Fundamental technique in planar geometry.

Idea: 
- we move a scan line from the bottom up
- at each point we keep track of the line segments we've crossed in order from left to right
- for simple polygons this cross section of line segments only ever changes at a vertex

Algorithm (for polygon):
- order vertices by y coordinate
- initialize cross section as empty at y = $- \infty$
- for vertex p in order
	- update cross section at p
	- how to locate p in terms of ordered segements? 
		- need to be able to compare to one segment and see if it is to the right or left?
			- then we can binary search
		- we compare with the cross product of triangle area for PAB
			- if the area is positive the point is to the left
			- area is negative it is to the right
			- [[Sidedness test]]
- possible updates
	1. one edge replaces another ![[Pasted image 20220916143216.png]]
	2. two edges meet at the vertex ![[Pasted image 20220916143232.png]]
	3. two edges added ![[Pasted image 20220916143246.png]]
Problem: find intersection of line segments in the plane.

## Applications
1. map overlay (intersection of two sets of lines)
2. boolean operations on polygons
3. is a polygon simple? O(n log n)
	1. could do it in O(n) by Chazelle
### References
1. 

---
status: #🌱             
date: 2022-09-16           
tags: [[CS 763 - Computational geometry]], [[Algorithms]], [[Sorting]]