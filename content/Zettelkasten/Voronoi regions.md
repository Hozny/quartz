---
title: "Voronoi regions"
draft: false
---
# Voronoi regions
Any region is such that all points inside it are closer to its corresponding site than all other points
- given points $p_i$ is called a site to avoid confusion with random points in a plane
![[Pasted image 20221005093251.png]]

## Voronoi diagrams are made of straight line segments
Consider the distance between two site points, the midpoint between the line connecting them is the point on that line that is equal, now take a perpendicular line to that 
![[Pasted image 20221005095406.png]]

## Properties
- Empty circle
	- there is a unique circle centered at each of each vertex (intersection of boundaries)
- Degree of voronoi vertices 
	- assuming no 3 points on a line, no 4 points on a circle
	- then vertices have degree 3
- shape of voronoi cells 
	- convex regions bounded by straight lines
- number of vertices/edges/cells
	- here we know the number of cells (faces) is n
- cell is unbounded if and only if it's on the convex hull

### References
1. 

---
status: #🌱             
date: 2022-10-05           
tags: [[]]           