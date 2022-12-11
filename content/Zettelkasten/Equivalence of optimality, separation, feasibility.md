---
title: "Equivalence of optimality, separation, feasibility"
draft: false
---
# Equivalence of optimality, separation, feasibility




**Optimization**
Given $K \subseteq \mathbb{R}^n, c \in \mathbb{Q}^n$, find $x^* \in K$ subject to $c^Tx \le c^Tx^*, \forall x \in K$ or determine $K = \emptyset$

**Separation**
 Given $K \subseteq \mathbb{R}^n, w \in \mathbb{Q}^n$, deteremine if $w \in K$, or find $\alpha$, subject to $||\alpha||_\infty = 1$ and $\alpha^Tx < \alpha^Tw, \forall x \in K$
 
**Feasibility**
Given $K \subseteq \mathbb{R}^n$, find $\overline{x} \in K$, or determine $K = \emptyset$


## Goal
To show equivalence we want to say that if $\exists$ polytime algorithm for one problem, then $\exists$ polytime algorithm for the rest.

We need to relax some condition on the Real versions of the problem and show that they are equivalent under weaker assumptions.

Let $K$ be a compact (closed, bounded) and convex set.
$$S(K, \varepsilon) : \{x : || x - y || \leq \varepsilon, \text{ for some } y \in K \}$$

**Weak Optimization**
Given $K \subseteq \mathbb{R}^n, c \in \mathbb{Q}^n, \varepsilon > 0$, find $x^* \in S(K, \varepsilon)$ subject to 
$$c^Tx \le c^Tx^* + \varepsilon, \forall x \in S(K, -\varepsilon)$$
or determine $S(K, -\varepsilon) = \emptyset$.

**Weak Separation**
Given $K \subseteq \mathbb{R}^n$, $w\in \mathbb{Q}^n$, $\varepsilon > 0$, determines if $w \in S(K, \varepsilon)$ or find $\alpha : ||\alpha||_\infty = 1$ and $\alpha^Tx < \alpha^Tw, \forall x \in S(K, -\varepsilon)$.
 
**Weak Feasibility**
Given $K \subseteq \mathbb{R}^n$, $\varepsilon > 0$, determines if $w \in S(K, \varepsilon)$ or $S(K, -\varepsilon) = \emptyset$.

Weak optimization -> implies Weak feasibility. Ellipsoid method shows Weak separation -> Weak feasibility 

Grotshel, Lovasz, Schriver (GLS) showed 
- *weak* optimization/feasibility/separation are all equivalent ($\mathbb{R}$)
- the also showed for rational $\mathbb{Q}$ polyhedra then *strong* optimization/feasibility/separation are equivalent

## Consequences of GLS
TODO: show this stuff
Travelling salesman problem
MinCut problem

### References
1. 

---
status: #🌱             
date: 2022-12-10           
tags: [[]] 

