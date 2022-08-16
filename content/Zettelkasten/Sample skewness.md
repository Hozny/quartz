---
title: "Sample skewness"
draft: false
---
# Sample skewness

sample skewness
$$\frac{\frac{1}{n}\Sigma^n_{i=1}(y_i-\bar{y})^3}{[\frac{1}{n}\Sigma_{i=1}^n(y_i-\bar{y})^2]^\frac{3}{2}}$$

If our data is symmetric $y_i - \bar{y}$ term will have an equivalent opposite sign term which cancels it out to 0.
- hence for symmetric data the sample skewness will be close to 0

If the sample skewness is positive we know there are more positive $(y_i - \bar{y})^3$,
- if there are $y_i >> \bar{y}$ then the term will be much larger than 0, and so there are lots of observations to the right of the mean without symmetric equivalents (hence terms don't cancel and we have positive skewness)
- visually this is a long right tail

Sample skewness is negative is opposite of the positive case
- long left tale
## References
1. 

---
status:
date: 2022-01-11
tags: [Statistics 241](Statistics%20241.md), [Statistics definitions](Statistics%20definitions.md)