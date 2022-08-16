---
title: "Multiprogramming process states"
draft: false
---
# Multiprogramming process states
![](Pasted%20image%2020220112150046.png)
- notice a *ready* process can only go *running* from *ready*
- notice a *waiting* process can only go *ready* (it must wait to be scheduled can't just resume once unblocked)

Waiting is sometimes called the **blocked** state 

There is a **zombie** (unix-based term) for states that are stopped but not cleaned up
- e.g use is a parent process checking return code of a child process

[[Zettelkasten/Operating system scheduler]]
## References
1. 

---
status:
date: 2022-01-12
tags: [Operating Systems - CS 350](Operating%20Systems%20-%20CS%20350.md), [Operating System](Operating%20System.md)