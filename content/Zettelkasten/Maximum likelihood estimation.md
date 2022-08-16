---
title: "Maximum likelihood estimation"
draft: false
---
# Maximum likelihood estimation

Given some some sample data and some unknown probability $\theta$. We find $\theta$ s.t. maximize the probability that the given data is observed.


The probability of the data being observed is irrelevant since the value doesn't scale for different size samples. We only care about maximizing it's maginitute not what it's magnititude it is.
- see [[Relative likelihood function]]


For continuous data we maximize on the p.d.f instead of the probability function.

## Maximizing
We usually solve for when the derivative of $L(\theta) = 0$ for multiple parameter functions we solve each partial equal to 0.

## invariance property
The maximum likelihood has an [[Invariance property]] where if $\hat{\theta}$ is the maximum likelihood estimate of $\theta$, then $g(\hat{\theta})$ is the maximum likelihood estimate of $g(\theta)$

## expected counts
The sum of expected counts sums to the data count when operating with maximum likelihood probabilities.

## distributions
Poisson ($\hat{\theta}=\bar{y}$): should use the sample mean as $\hat{\theta}$
Gaussian: should use mean and standard deviation **unless** specifically asked for **maximum likelihood**
Binomial: $\hat{\theta} = \frac{y}{n}$
Exponential: $\hat{\theta} = \bar{y}$
Multinomial: $\hat{\theta_i} = \frac{y_i}{n}$
## Combnining likelihoods
If we have two data sets from **independent** studies then the combined likelihood function is 
$$L(\theta) = L_1(\theta) \cdot L_2(\theta)$$

### References
1. 

---
status: #🌱 
date: 2022-01-20
tags: [Statistics](Statistics), [Statistics 241](Zettelkasten/Statistics%20241.md)