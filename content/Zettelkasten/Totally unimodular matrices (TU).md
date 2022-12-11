---
title: "Totally unimodular matrices (TU)"
draft: false
---
# Totally unimodular matrices (TU)

## Definition
A matrix is totally unimodular (TU) if every square submatrix has a determinant in $\{-1, 0, 1 \}$

[[Cramer's rule]]

**Theorem:** If a matrix is TU, and $b \in \mathbb{Z}^m$ then every solution of $\{x : Ax = b, x \geq 0 \}$ is integral. 
Proof:
Let $x^*$ be a BFS.
Consider $x^* = \frac{det \; A_B(i)}{det(A_B)}$ by [[Cramer's rule]].
Then $x^*$ is integer since $A_B(i)$ is integer matrix and so its determinant is integer. And the denominator is in $\{-1, 1, 0\}$
- Results holds for other forms of polyhedra too $Ax \leq b$ and $Ax \leq b, x \geq 0$

**Lemma:** Let $A$ be TU. Then the matrix obtained after any of the following operations is TU
1. Delete a row/column
2. Multiply a row/column by -1
3. Permute row/column
4. Transpose matrix
5. Duplicate row / column
6. Add a row/column with at most one nonzero entry in $\{-1, 1\}$
Proof: 
2-4: can only change the sign of the determinant
1: we are left with submatrices of $A$, by definition we are done
5: Determinant of matrix is $0$ as we have two equal rows so they're dependent
6: Use [[Laplace formula]], rest is exercise. TODO: fill the rest in

Application: if $A$ is TU then $\{x : Ax \le b, l \le x \le u\}$ is integral.

Application: If $A$ is TU  then the dual $\min b^Ty, A^Ty \geq c$ will also have integral optimal solutions like the primal.  

### Sufficient condition for TU
**Theorem:** Let $A \in Z^{m \times n}$ with all entries in $\{-1, 0, 1\}$. If $A$ has at most 2 non zero in every column and there exists a partition $I_1, I_2$ of the rows such that, for each column, nonzero entries of same sign lie in different partitions and non zero entries of opposite sign lie in same partition
Proof:
Suppose the lemma is False. Let $A$ be the minimal counterexample. Then $A$ is not TU and every submatrix of $A$ is TU by minimality. 
Note $A$ must be square to not contradict minimality.
If $A$ has a column with only 1 non-zero entry then we can remove the column to get a TU submatrix, adding the column back maintains TU by theorem, a contradiction.
We subtract each column in the different partitions $\sum_{i \ in I_1} a_i - \sum_{i \in I_2} a_i = 0$
This means that that the columns are linearly dependent so $det(A) = 0$ but then it is TU, contradiction.
So $A$ is TU. 

### Example applications

Bipartite matching: finding a matching for a bipartite graph
- since $G$ is bipartite we can split each edge's endpoints into two different partitions by definition, and so the corresponding matrix formulation is $TU$ 
- so we can solve this problem using the $IP$ relaxation
- IP Formulation: $\max \sum_{e \in E} x_e$ subject to $\sum_{e \in S(v)} x_e \le 1, \forall v \in V$, $x_e \in \{0, 1\}, \forall e \in E$.


### References
1. 

---
status: #🌱             
date: 2022-12-10           
tags: [[]] 

