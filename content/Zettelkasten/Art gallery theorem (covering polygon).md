---
title: "Art gallery theorem (covering polygon)"
draft: false
---
# Art gallery theorem (covering polygon)
**Theorem:** For an n vertex polygon we need at most floor(n / 3)  guards. And for some polygons we the floor(n / 3) guards are necessary

**Proof:** 
Colour the triangulation s.t. each vertex is red, blue or green. 
- proof this is possible: prove by induction, base case is trivial, take n-polygon, cut off an ear (it's colourable by inductive hypothesis) then add the ear back and the colour of that vertex is determined 

Notice the set of guards that is each red vertex can see all the triangles it's in which covers the entire polygon. This is true for all the colours.
- the least of these colours has floor(n/3) vertices and so you need at most floor(n/3) vertices to cover the polygon

## When are floor(n/3) guards necessary
This shape 
![[Pasted image 20220916125038.png]]
- each tooth needs its own guard
- has been shown that you may need an irrational position to place the guard (not possible with finite bit representation)

Problem belongs to the $\exists \mathbb{R}$ problems
![[Pasted image 20220916125543.png]]

## Minimum number of guards algorithm
 - This is an NP hard problem
 - The decision problem

### References
1. 

---
status: #🌱             
date: 2022-10-05           
tags: [[]]           