---
title: "Triangulating a polygon"
draft: false
---
# Triangulating a polygon
## Triangulating a polygon
Definition: partition a polygon into triangles without Steiner points. Each edge will be a chord - a line segment inside the polygon joining to vertices.

Theorem:  Any polygon can be triangulated.

Proof: By induction on # of vertices
*base:* n = 3. Trivial triangle.
**inductive step:** 
Take some convex vertex (angle < 180).
- proof this exists: take minimum x coordinate vertex (and minimum y in case of ties).

Let the corner of this vertex be A and we have ABC with BC potential chord.
- if BC is a chord, we are done. Take the cord and we have split the polygon into two polygons and so by induction they are each triangulizable.

BC not a chord. 
- then there is some vertex D inside the triangle ABC s.t. that AD is a chord.
Take a line parallel to BC and sweep it from A towards BC, the first vertex it hits is a point that D s.t. AD is a chord. 
	- since AD doesn't intersect anything before D so AD doesn't.
- if we hit no point then BC is a chord.

![[Pasted image 20220916115122.png]]

### Some properties of triangulations
- number of triangles: n - 2 (n - 3 chords) 
- every polygon has at least two disjoint **ears** 
	- triangles formed by 2 incident polygon edges + 1 chord
- triangles form a tree
	- the leaves of this tree are the ears
	- the degree of the tree vertices are 1, 2, or 3 (max degree 3)

The number of triangulations of an n-vertex convex polygon  is the Catalan number $C_{n-2}$ 

[[Algorithm to triangulate polygon]]
### References
1. 

---
status: #🌱             
date: 2022-10-05           
tags: [[]]           