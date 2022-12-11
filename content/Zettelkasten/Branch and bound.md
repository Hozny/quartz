---
title: "Branch and bound"
draft: false
---
# Branch and bound
Used to solve:
$$\max c^Tx$$
subject to
$$x \in P_I$$

Assume that $P_I = P \cap \mathbb{Z}^n$, $P$ is a rational pointed polyhedron

Assume that LP relaxation has an optimal solution

## Idea
We split the IP into subproblems based on a variable and then take the maximum of the subproblems. We keep track of the best answer we found so far to avoid branching on suboptimal subtrees.

For example in the binary IP case we can split and solve for $x_1 = 0$ and $x_1 = 1$ as two subproblems where we fix $x_1$ and the optimal solution is the maximum of the two. 

For general IPs, branch by picking $x_j, a \in \mathbb{Z}^n$ and doing $x_j \leq a$ or $x_j \geq a + 1$

## At each step we either prune or branch

If the LP relaxation is infeasible than we do not branch (since it will also lead to infeasibility). **Fathoming/pruning by infeasibility**

Suppose that the LP relaxation has an optimal solution $x^*$ and $z_{LP}$ is its value
- if $z_{LP} \leq z_{best}$ we do not branch any further as it will not result in a better score than the best we have. **Fathoming/pruning by bound**

We do not branch if solution to relaxation $x^* \in \mathbb{Z}^n$ (we already have integer solution to this subtree). **Fathoming/pruning by optimality**

If we cannot **fathom/prune** at some step then we branch by picking some $x^*_j \notin \mathbb{Z}^n$ and introducing $x_j \le \lfloor x_J^* \rfloor$ and $x_j \ge \lceil x_j^* \rceil$.

### References
1. 

Flashcards: [[Anki/Optimization]]

---
status: #🌱             
date: 2022-12-11           
tags: [[Zettelkasten/Optimization]], [[CO 255 Intro to optimization]] 

