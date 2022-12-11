---
title: "Ellipsoid method"
draft: false
---
# Ellipsoid method

Problem: Given $P = \{ x : Ax \leq b \}$ solve if $P = \emptyset$ or find $\bar{x} \in P$
- $P$ is assumed to be *bounded*
- this is the [[Feasibility problem]]

## Overview
Given a unit ball $B(0, 1)$ we perform an [[affine transformation]] on the ball to obtain a **Ellipsoid** which contains $P$. 

Then we check if the centre of the ellipsoid is in $P$, if not we take a [[Separating hyperplane theorem | separating hyperplane]] and take a new ellipsoid containing the correct side of the hyperplane (we know P must lie in our new ellipsoid)

Repeat until we achieve a point inside $P$ or volume of our ellipsoid is sufficiently small so that we know $P = \emptyset$
![[Pasted image 20221210144258.png]]

## Ellipsoid definition
$$E(A, b) = \{x : || A(x - b) || \leq 1 \}$$

This is an [[affine transformation]] on the closed ball $B(0, 1)$

### Algorithm
Suppose $P \subseteq E(M, z)$
- if $z$ (the centre of $E$) is in $P$ we are done
- else: take half plane $\alpha^T x \leq \alpha_0$ s.t. $P \subseteq \{x : \alpha^T x \leq \alpha_0 \}$ and $\alpha^Tx = \alpha_0$
	- now our new ellipsoid is such that it contains the intersection of the old ellipsoid and the the halfspace
	- $E(M, z) \cap \{x : \alpha^T x \leq \alpha_0 \} \subseteq E(M', z')$

## Run time
Finding halfspace  $\alpha^T x \leq \alpha_0$ can be done in polynomial time
- justification: TODO

There exists $E(M', z')$ that can be computed in polynomial time such that 
$$\frac{vol(E(M', z'))}{vol(E(M, z))} \leq e^{\frac{-1}{2n+2}}$$

This leads to algorithm stopping after this many iterations
![[Pasted image 20221210145722.png]]
- justification: TODO

There is also some stuff with the volume of the ellipsoid only needing to be smaller than some $\epsilon_0$ to guarantee $P = \emptyset$ so we can terminate. 

### References
1. https://math.mit.edu/~goemans/18433S09/ellipsoid.pdf mit lecture containing the ellipsoid illustration

---
status: #🌱             
date: 2022-12-07           
tags: [[CO 255 Intro to optimization]], [[Zettelkasten/Optimization]]           