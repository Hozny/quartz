---
title: "CS 763"
draft: false
---
# CS 763 - Computational geometry



## Polygons
[[Polygon]]
- [[Jordan curve theorem]]

[[Any two polygons with same area have a common dissection]]
- hinged dissections have a common hinged dissection

[[Decomposing polygons]]
- [[Triangulating a polygon]]
- [[Algorithm to triangulate polygon]]

[[Art gallery theorem (covering polygon)]]

[[Lord kelvin's bubble problem]]

### 3D Polyhedron
[[Polyhedron]]

[[Polyhedron tetrahedralization]]
- [[Not all polyhedra can be tetrahedralized]]
- [[Tetrahedralizing a polyhedron is NP-Hard]]

[[The number of tetrahedra in a tetrahedralization is not unique]]
## Convex hulls
[[Convex hull]]

[[Euler's formula]]

## Points
[[Planar point location]]
[[Range queries]]

[[Measuring data structures]]

[[Voronoi regions]]

### Delaunay triangulation
- if two faces share an edge in voronoi, place an edge between them
	- this is the planar dual of the voronoi region

- the boundary of delaunay triangulation is convex hull

- $p_i, p_j$ have an edge between them in delaunay if and only if there is an empty circle through them
- every 3 points that form empty circle put a triangle

### Applications of delaunay triangulations
- nearest neighbour graph is a subset of delaunay 
	- take the midpoint of the line joining two nearest neighbours, circle centred around this midpoint is empty and goes through p,q so pq is an edge in delaunay 
- minimum spanning tree in a plane
	- minimum spanning tree in 2D has n^2 possible edges
	- minimum spanning tree is a subset of delaunay so use delauney (find in n log n) and apply mst on it
		- proof $mst \subseteq delaunay$, take edge e and remove it, the two points it was connected to in the MST have an empty circle about the midpoint of e, so that edge must be in the delaunay triangulation

Other proximity graphs
- relative neighbour graph
- gabriel graph
	- if e=p,q and the circle with diameter e is empty, then it is in the gabriel graph
![[Pasted image 20221028164503.png]]

## Application of voronoi diagrams
- facility location (finding empty circles)

## convex hull <-> delaunay 
- take points and project them into 3d on the paraboloid $z = x^2 + y^2$ (add a z to each point)
	- 3 points are on an empty circle if and only if their points on the paraboloid are co-planar

## Incremental delauney algorithm
- take any triangulation and change it to delauney 

every edge is lega <==> it is delauney triangulation

Consider the angle vector
- the vector of all angles in lexicographic order of angles in the triangulation

When you flip an illegal edge you increase the angle vector lexicographically
- this implies that flipping edges always terminates 

So the delauney triangulation maximizes the minimum angle
- and the second min, third, min, etc...
### Constrained delaunay triangulation
- given a set of fixed edges F
- if 3 points form a circle so that if a point is in it it cannot be seen from the triangle abc without crossing a fixed edge in F
- ![[Pasted image 20221106224409.png]]

### Flip distance
Every triangulation can be flipped into another one (flips any edge whos removal gives convex quadrilateral)
- flip it to delauney triangulation O(n^2) flips, and flip it back to the other O(n^2)



## Content
1. Triangulations
2. 

[[Good paper ideas for cs 763]]

## Final project
[[Notes on motion planning paper (Erik Demaine)]]

## Books
Discrete and Computational Geometry (Devadoss-O'Rouke) 
- Highly recommended

Handbook of Discrete and Computational Geometry [Handbook]
- good for reference

Computational Geometry in C [O'Rouke]

### References
1. https://www.youtube.com/watch?v=q5FkSt5BGQE&list=PLMcS6qoVih6Vz3JHzAb5F1EDsvbDd1DxY&index=2 

---
status: #🌱             
date: 2022-09-14           
tags: [[Notes on motion planning paper (Erik Demaine)]]    
