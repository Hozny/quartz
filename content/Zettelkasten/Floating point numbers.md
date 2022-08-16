---
title: "Floating point numbers"
draft: false
---
# Floating point numbers
Any floating point number representation can only represnt a **finite** set of numbers. So for arbitrary real number x we must approximate it.

Working with floating points introduces a lot of approximations (errors). See the [[IEEE standard]] to see a way we are able to ensure the approximations are identical across machines (important for [[Portability]])

## Representation
[[Normalized form]] of floating points

Floating point number representation limits
1. Density: the number of digits, m, in the expansion
2. Range: number of integers for p, $L \leq p \leq U$

Floating point number system is represented by 4 parameters $F(\beta, m, L, U)$
Where each number is
$$\pm 0.d_1d_2d_3\cdots d_i \times \beta^p$$
- each $d_i < \beta$ 
- $d_1$ is non-zero
- there are at most m digits ($i < m$)
- $L \leq p \leq U$

Zero is given by all digits 0 and exponent zero

### Dealing with limitations
Two ways of dealing with floating point density (digits) limitations
- we chop a number (truncate the number of digits)
- we round a number (if the exceeding digits is > 0.5\*Base we round up, else chop)

Range limitations in IEEE
- underflow -> 0
- overflow -> $\infty$
- $\frac{0}{0}$ -> NaN (not a number)

## Measuring floating point approximation
Given a real number x and our approximation y

- Absolute error: |x - y|
- Relative error: |x - y| / | x |
	- if x is close to 0 we modify it to |x - y| / |y| 

if the relative error is approximately $10^{-s}$ then we say y approximates *s significant digits*
- if $0.5 \times 10^{-s} \leq \frac{|x-y|}{|x|} \leq 5 \times 10^s$

## Error bounds
The relative error is bounded for all numbers in the exponent range.
- the max relative error is called **machine epsilon** $\epsilon_{mach}$
so 
$$\frac{fl(x) - x}{x} = \delta \text{ where } |\delta| \leq \epsilon$$
- rewriting this gives $x = fl(x) \cdot (1 + \delta)$

**Definition:** $\epsilon_{mach}$ is the smallest number s.t. $fl(1+\epsilon) > 1$

For a FP system
- $e_{mach} = \beta^{1 - m}$ if chopping
- $e_{mach} = 0.5 \cdot \beta^{1 - m}$ if rounding

## Distribution of floating point numbers
Distribution is not uniform across all numbers. Since relative error scales to the number and is bounded then for smaller numbers there must be more precision (less spacing) between numbers and for larger numbers there is more spacing (since the relative error would be the same for a larger denominator)
- spacing $\approx \epsilon \cdot |x| \cdot 2$
- so larger magnitude floating point numbers are more spaced apart than numbers close to 0

Generally for larger numbers we don't need the same precision as we do for smaller numbers.
- F(10, 1, -10, 10) for example, there around 10 numbers between 0 and 1 but then it becomes integers only 2,3,4...
- between 0 and 1 they are 0.1 apart, 1-10 they are 1 apart, 10-100 they are 10 apart

## Floating point arithmetic
We denote floating point addition fl( fl(x) + fl(y) ) for any real x, y as $x \oplus y$
- this is commutative
- this is not associative $x \oplus (y \oplus z) \neq (x \oplus y) \oplus z$

Case 1: same sign 2 floating numbers is approximately $2 \cdot \epsilon_{mach} \cdot \frac{|x| + |y|}{|x + y|}$
Case 2: opposite signs can have large relative error since $|x + y| << |x| + |y|$ if two large numbers with opposite signs
- **caution** when subtracting large numbers

## Floating point pitfalls
There are two main sources of error:
1. the FP representation of the numbers themselves
2. the arithmetic operations we perform introduce their own errors as well


## References
1. Lecture 1 cs 370
2. https://docs.oracle.com/cd/E19957-01/806-3568/ncg_goldberg.html
	- really good document on FP systems 
3. 

---
status:
date: 2022-01-07
tags: [Numerical Computation - CS 370](Numerical%20Computation%20-%20CS%20370.md), [Programming](Programming)