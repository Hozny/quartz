---
title: "Simplex method"
draft: false
---
# Simplex method

1. First convert LP to standard equality form (SEF: $Ax = b, x\geq 0$)
	1. Recall any LP can be written in SEF form: [[Reducing linear programming general form to standard equality form]]
2. The convert to canonical form 
3. Solving assuming we have initial BFS 
	1. [[Two phase simplex]] if we don't have a BFS

Canonical form for some basis $B = {i_1, \cdots, i_n}$
$$\begin{align*}
Ax &= b \\ 
A_B^{-1}Ax &= A_B^{-1}Ab \Rightarrow 0 = A_B^{-1}Ab - A_B^{-1}Ax \\
\bar{A} &= A_B^{-1}A , \bar{b} = A_B^{-1}b \\ 
c^Tx - & c_B^T\bar{A}x + c_B^T\bar{A}b \\ 
\end{align*} $$
Notice that  $c^Tx - c_B^T\bar{A}x + c_B^T\bar{A}b$ is 
- $c^Tx - c_B^T\bar{A}x + c_B^T\bar{A}b$ 
- $c_B^Tx_B + c_N^Tx_N - c_B^T\bar{A}x_B - c_B^T\bar{A}x_N + c_B^T\bar{A}b$ 
	- notice $c_B^T\bar{A}x_B = c_B^Tx_B$  (since it's the inverse on B columns)
- $c_N^Tx_N - c_B^T\bar{A}x_N + c_B^T\bar{A}b$ 

So canonical form is 
$$\begin{align*}
\max (c^T - c_B^TA_B^{-1}A)x& + c_B^T\bar{A}b \\ 
A_B^{-1}Ax &= A_B^{-1}b \\
x \geq 0 \\
\end{align*} $$

We now have each index at B is 0, so we can pick a positive index not in B to find a direction that increases the objective value.

## Algorithm for dummies
Start with canonical form.

1. Pick the smallest index $j$ such that $c_j$ that is positive.
2. Do the ratio test 
	1. from the column $j$ pick the smallest positive row $i$ with $\frac{b_i}{a_{j,i}}$
	2. the basis vector in the same relative position as the row is kicked out
3. Perform row operations on $A$ and $b$ to make the new column equal to the one you kicked out.
4. Reorder the rows in increasing index
5. Add the new $b'$ times the old $c_B$ to the objective
6. Subtract the new row from $c$

## Complexity of simplex
In the worst case simplex is an exponential time algorithm for all known implementations.

There is research being done for trying to reduce simplex run-time. It works well in practice.

### References

1. 

---
status: #🌱             
date: 2022-11-05           
tags: [[]]           