---
title: "Thread API"
draft: false
---
# Thread API

`pthread_create()`, `pthread_join()`

See [[Thread locks]]
```c
pthread_mutex_t lock;
pthread_mutex_lock(&lock);
x = x + 1; // or whatever your critical section is
pthread_mutex_unlock(&lock);
```
- **this code is broken** need to initialize the lock and check error code

[[Condition variable]]
### References
1. https://pages.cs.wisc.edu/~remzi/OSTEP/threads-api.pdf  

---
status: #🌱 
date: 2022-02-28
tags: [[Operating Systems - CS 350]], [[Operating System]]