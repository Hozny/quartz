---
title: "Integer programming"
draft: false
---
# Integer programming
## Definition
$$\begin{align*}
   \max c^Tx, & \text{ such that} \\
    Ax &\le b \\
    x_j &\in \mathbb{Z}^n \\
   \forall j \in I &\subseteq \{1, \ldots n\} \\
\end{align*}$$
- Pure integer: all entries are integer
	- otherwise: *mixed* integer   
- If all variables in $[0, 1]$ it also a (mixed) binary IP

$$P_I = P \cap \{x_j \in \mathbb{Z}, \forall j \in I\}$$
- Most results here (from [[CO 255 Intro to optimization]]) assume $P_I \neq 0$ and pure integer program

## Some results
Recall  $P = \{x \in \mathbb{R}^n : x = \sum \lambda_i x^i + \sum \mu_j r^j, \sum \lambda_i = 1, \lambda_i, \mu_j \ge 0\}$, where $x^1 \ldots x^p$ are rational extreme points and $r^1 \ldots r^q$ are integer extreme rays.

- i.e, $P = conv(x^i) + cone(r^j)$

We break down $P_I$ into two components similarly. 

Let $T = \{x : x = \sum \lambda_i x^* + \sum \mu_j r^j, \sum \lambda_i = 1, \lambda \ge 0, 0 \le \mu \le 1\}$
- $T_I = T \cap \mathbb{Z}^n$

$R_I = \{x = \sum \mu_j r^j, \mu \in \mathbb{Z}^q_+\}$

Notice $T$ is fractional part of and $R_I$ is the integer part, this lets us prove the following result. 

**Claim**: $P_I = T_I + R_I$
Proof:
$P_I \subseteq T_I + R_I$. 
Let $x = \sum \lambda_i x^i + \sum \mu_j r^j$ such that $\sum \lambda_i = 1, \lambda, \mu \ge 0$.
$$x = \sum \lambda_i x^i + \sum \mu_j r^j = \sum \lambda_i x^i + \sum \hat{\mu}_j r^j + \sum \lfloor \mu_j \rfloor r^j$$
where $\hat{\mu}_j = \mu - \lfloor \mu_j \rfloor$. 
Note that $w = \sum \lambda_i x^I + \sum \hat{\mu}_j r^j \in T$ and $z = \sum \lfloor \mu_j \rfloor r^j \in R_I$. 
- Why is $w$ integral? Because $x - z = w$, so because $z$ and $x$ are integral, then $w$ is integral, so $w \in T_I$.
- $\Leftarrow$ is easy.

**Claim**: $conv(R_I) = rec(P)$
Proof: TODO exercise

**Theorem**: $conv(P_I)$ is a rational polyhedron
Proof: Because $T_I$ is bounded then $conv(P_I) = Q + C$ where $Q$ is a rational-polytope and $C$ is a finitely generated cone and thus $conv(P_I)$ is a rational polyhedron. 
- I think the idea here is that it is a finitely generated from rational extremes and thus it is a rational polyhedron. 

**Theorem**: If $P$ is a rational polyhedron and $P_I \neq \emptyset$ then $rec(conv(P_I)) = rec(P)$
Proof: TODO exercise

**Theorem**: $\max \; c^Tx$ has the same solutions for feasible region $P_I$ and $conv(P_I)$, i.e optimal to $P_I$ is optimal for $conv(P_I)$
Proof:
Let $z_1$ be optimal value for $x \in P_I$, $z_2$ for $x \in conv(P_I)$. 
$P_I \subseteq conv(P_I)$ so $z_1 \leq z_2$
$\bar{x} \in conv(P_I)$ so we have $\bar{x} = \sum \lambda_i w^i, \sum \lambda_i = 1, \lambda \geq 0$. 
So we have for some $i$, $z_2 \leq c^Tw^i$ otherwise $c^T\bar{x} > \sum c^T \lambda_i w_i = c^T\bar{x}$. 
So $z_2 \leq z_1$ thus $z_2 = z_1$

**Theorem** If $P \neq \emptyset$ is pointed then $conv(P_I)$ is pointed and any extreme point of $conv(P_I)$ is integral. 
Proof: $conv(P_I)$ is pointed since $rec(conv(P_i)) = rec(P_I)$. If $\bar{x}$ is an extreme point of $conv(P_I)$ then there is some $c$ so that $c^T\bar{x}$ is a unique optimal solution. But by earlier theorem $P_I$ has the same optimal value and since it is unique it must be the same vector and thus $\bar{x}$ is integral.

**Lemma:** Let $P$ be pointed. $P_I = P \cup \mathbb{Z}^n$. $P$ is integral if and only if $P = conv(P_I)$
Proof: skipped

### References
1. 

Flashcards: [[Anki/Optimization]]

---
status: #🌱             
date: 2022-12-10           
tags: [[Optimization]] 

