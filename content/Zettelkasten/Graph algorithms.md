---
title: "Graph algorithms"
draft: false
---
# Graph algorithms
n typically represents number of vertices (nodes). m is number of edges.


## Notations
- degree(v) : for undirected graphs - number of edges with v
- indegree(v) : how many point into the vertex
- outdegree(v) : how many point out the vertex

## Definitions
- **path:** a sequence of vertices connected by edges
- **cycle:** a path that starts and endgs with the same vertex
- **simple cycle:** a cycle with no repeated vertices
- **tree:** a connected undirected graph without cycles
- **connected:** undirected graph if every vertex is joined by a path
- **connected component:** maximal connected subgraph

## Storing graphs
- Adjacency matrix: A\[i, j] = 1 if (i, j) exists
	- O(n^2) space
- Adjacency list: linked list for each vertex's neighbours
	- O(n + m) space
	
![[Pasted image 20220302220547.png]]

## Traversal algorithms
bfs
- use a queue and explore by level
- mark discovered vertices
- the level of a vertex v in bfs is the minimum distance from v_0 to v
- if we encounter an edge to an already visited node the graph has a cycle
dfs
- explore children

## Test bipartite
run BFS and save V1 = even levels, V2 = odd levels
- for any edge connected u, v we need u, v to be not in the same V1 or V2

if **not** bipartite then there is an odd cycle
- bipartite iff no odd cycle is a theorem

## Minimum spanning trees
Kruskal's algorithm
- add minimum edge greedily - never introduce a cycle

[[Prim's algorithm]]

## Shortest path in unweighted graphs
BFS in unweighted graph finds the minimum path, since it finds least number of edges from S to T.

## Shortest path in weighted graphs
### Djikstra's algorithm O(m log n)
idea: grow a tree from the starting vertex

algorithm: Greedily pick the closest vertex that is not visited by the tree
- **note:** Djikstra's algorithm requires no negative weights
![[Pasted image 20220315125629.png]]

### Shortest path in DAG O(m + n)
Toplogical sort so that every vertex doesn't point to any vertex before it

Go through the vertices from 1 .. n and calculate the minimum distance to that vertex
![[Pasted image 20220315130624.png]]

### Bellman-Ford single source (no negative cycle) O(n \* (n + m))

### References
1. 

---
status: #🌱 
date: 2022-03-02
tags: [[Algorithms]], [[Algorithms - CS 341]]