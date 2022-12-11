---
title: "Planar point location"
draft: false
---
# Planar point location
Given a planar subdivision answer queries of which region a point is in.

## Voronoi diagram
- Split the plane into regions where each region corresponds to a point such that any point added to that region will be closest to the associated point than any other point

## 1D point location
- Binary search

## Slab method 
1. Split the space into vertical slabs so we once we know which one we are in we can find the region in O(log n) with binary search (using [[Sidedness test]])
	1.  P : O(n ^ 2)
	2. S : O(n ^ 2)
	3. Q : O(log n)
	
![[Pasted image 20221003094325.png]]

## Persistence 
1. Notice that the binary trees in the slab method don't change much (each vertex removes an edge and adds some constant amount)
	1. so we build the tree as we go from left to right, but we want to query trees that we've built in the past not the last tree (the empty tree)

## Kirkpatrick's triangulation refinement
- Make a bunch of triangulations that get more and more accurate
	- each less accurate triangle is made up of 3 more accurate ones
	- so we check which of the 3 more accurate triangles the point is in and repeat on that triangle
	
![[Pasted image 20221003095522.png]]	

## Summary
We can achieve
- P: O(n log n) 
- S : O (n)
- Q: O(log n)

### References
1. 

---
status: #🌱             
date: 2022-10-05           
tags: [[]]           