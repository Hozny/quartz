---
title: "CO 255 Intro to optimization"
draft: false
---
# CO 255 Intro to optimization



[[Convex function]]

[[Linear programming piecewise linear convex functions]]

[[Linear programming problems with absolute values]]

[[Geometric representation of linear programming]]

[[Invertible matrix]]



## Topics
- Basic optimization terminology and concepts 
### Linear Programming (Certificates / Duality)
- [[Linear programming definition]]
	- [[Reducing linear programming general form to standard equality form]]
- [[Fundamental theorem of linear programming]]
- [[Fourier Motzkin elimination]]
	- Certificates 
		- [[Farkas Lemma]]
	- Duality 
	- Geometry 
- [[Simplex method]]
- [[Ellipsoid method]]
- [[Equivalence of optimality, separation, feasibility]]
### Integer Programming
- [[Integer programming]]
- [[Cutting plane algorithm]]
	- [[Totally unimodular matrices (TU)]]
		- [[Network flows linear optimization]] (TU application) #TODO
-  Relationship to linear programming 
- Cutting plane methods 
- [[Branch and bound]]
	- Branch-and-bound 
	- Integral polyhedra 

### Nonlinear Programming
- Nonlinear programming 
	- Convexity 
	- Optimality conditions  
	- SDPs 
	- Basic algorithms
	- Duality

[[CO255 - Midterm review]]

### Nonlinear Programming
The [[Gradient of a function]] [[Hessian matrix]]

Convexity: Let $S$ be a convex set with $S \subseteq \mathbb{R}$ and $f : S \rightarrow\mathbb{R}$, twice differentiable, then the following are equivalent ($\forall x, \bar{x} \in S$):
1. $f'(x) - f'(\bar{x})(x - \bar{x}) \geq 0$
2. $f''(x) \geq 0$
3. $f(x) ≥ f (x + f′(\bar{x})(x − \bar{x})$
4. $f$ is a convex function
#### Proof
Skipped

Theorem: Let $S \subseteq \mathbb{R}^n$ be a convex set, $f : S \rightarrow \mathbb{R}$ twice differentiable. The following are equivalent
1. $[\Delta f(x) - \Delta f(\overline{x})]^T(x - \overline{x}) \ge 0, \forall x, \overline{x} \in S$
2. $\Delta^2 f(x)$ is positive semidefinite
3. $f(x) \ge f(\overline{x}) + \Delta f(\overline{x})^T(x - \overline{x}), \forall x, \overline{x} \in S$
4. $f$ is a convex function
#### Proof
Idea is to consider $g(\lambda) = f((1 - \lambda) x + \lambda \overline{x})$ and apply the previous result

[[Positive semidefinite matrices]]

### References
1.  [[Equation of a line in Rn]]

---
status: #🌱             
date: 2022-09-09           
tags: [[Zettelkasten/Optimization]]           