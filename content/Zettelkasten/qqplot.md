---
title: "qqplot"
draft: false
---
# qqplot
![[Pasted image 20220126200215.png]]
We plot the observed quantile on the y axis and theoretical quantile on the x axis. A perfect fit is a perfect straight line, this plotting allows us to analyze the fit better since we only need to see how "straight" the line is.

For a normal distribution transforming from standardized (G(0, 1)) to whatever theoretical G(X, Y) is a matter of subtracting (mean) constant and dividing (deviation) which maintains the linearity of a slope. 

And so we can plot theoretical values (x axis) based on G(0, 1) 
![[Pasted image 20220126200557.png]]
- This is powerful since we now don't have to estimate the mean or standard deviation of the sample to compare it to theoretical [[Gaussian distribution]]

At the tails there will be deviations in the tails since by definition as we approach the tail data points become less dense and so they vary more.

## Skewness
Skewness is reflected by the symmetry of the qqplot 

Tails are reflected by where the data deviates away from the Gaussian line faster. If the upper right quadrant shoots up faster than the normal line then we know it has a denser right tail than the normal distribution.


### References
1. 

---
status: #🌱 
date: 2022-01-26
tags: [[Statistics]], [[Statistics 241]]