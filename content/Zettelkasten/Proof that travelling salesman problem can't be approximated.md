---
title: "Proof that travelling salesman problem can't be approximated"
draft: false
---
# Proof that travelling salesman problem can't be approximated
we prove that TSP can't be approximated well by showing an approximation for TSP -> Hamiltion Cycle is solvable in poly-time
assume some algorithm A approximates TSP with factor p
then create a new graph G' which has edge-weights 1 if the edge is in G, otherwise edge weight of p*|V(G)| + 1 
then approximating TSP on this graph returns an optimal answer within a factor of optimal solution
if no hamiltonian cycle exists then the TSP on G' is going to be at least |V(G)| - 1 + p*|V(G)| + 1  = 2p|V(G)| > p|V(G)|
similarly if a hamiltonian cycles exists then approximation algorithm on TSP must be less than p|V(G)|
so if approximation algorithm returns value < p|V(G)| hamiltonian cycle exists

### Generalized
The proof of Theorem 35.3 serves as an example of a general technique for
proving that we cannot approximate a problem very well. Suppose that given an
NP-hard problem X , we can produce in polynomial time a minimization prob-
lem Y such that “yes” instances of X correspond to instances of Y with value at
most k (for some k), but that “no” instances of X correspond to instances of Y
with value greater than pk. Then, we have shown that, unless P D NP, there is no
polynomial-time p-approximation algorithm for problem Y .

### References
1. theorem 35.3 in CLRS

---
status: #🌱 
date: 2022-04-18
tags: [[]]