---
title: "Cutting plan algorithm"
draft: false
---
# Cutting plane algorithm

### Algorithm
1. $R \leftarrow P$
2. Let $x^*$ be optimal solution to $\max \; c^T x, \; x \in R$
3. If $x^*$ is integral we are done
4. Otherwise take a cutting halfplane $\alpha x \leq \alpha_0$ so that $\alpha^Tx > \alpha_0$ and $\alpha^Ty \leq \alpha_0, \forall y \in P_I$
5. $R \leftarrow R \cup \{x : \alpha^Tx \leq \alpha_0 \}$
6. Repeat while $R \neq \emptyset$

**Theorem:** Let  $R$ be a pointed polyhedron such that $P_I \subseteq R$ and $R \cup \{x_j \in \mathbb{Z}^n, \forall j \in I \} = P_I$. Let $x^*$ be a BFS of R. Then $x^*$ is integral if and only if $x^* \in conv(P_I)$.
Proof: 
TODO:

Chvatal-Gomory cut (CG-cut)
Proof:
Given $P = \{x : Ax = b, x \geq 0 \}$
Consider the i-th constraint of $x_b + A_B^{-1}A_Nx_N = A_B^{-1}b$
We have the constraint $x_i + \sum_{j \in N} \overline{a}_{ij}x_j = \overline{b}_i$
We can decrease the coefficient to get $x_i + \sum_{j \in N} \lfloor \overline{a}_{ij} \rfloor x_j \le \overline{b}_i$ which is valid for $x \in P$
Furthermore we have $x_i + \sum_{j \in N} \lfloor \overline{a}_{ij} \rfloor x_j \le \lfloor \overline{b}_i \rfloor$ for $x \in P_I$
But for $x^*$ the constraint isn't satisfied since $x^*_j = 0$ we have $x^*_i + \sum_{j \in N} \lfloor \overline{a}_{ij} \rfloor x^*_j = \bar{b}_i  > \lfloor \overline{b}_i \rfloor$
So that gives us the required cutting plane.

**Theorem:** Cutting plane algorithm using CG-cuts terminates in finite time. 
Proof: Skipped

### References
1. 

---
status: #🌱             
date: 2022-12-10           
tags: [[]] 

