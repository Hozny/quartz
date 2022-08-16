---
title: "Lock-based data structures"
draft: false
---
# Lock-based data structures
Data structures that with locks to enable concurrent use of them.

## Counters
We have concurrent counters with locks. These are trivial.

We can have approximate counters which increase paralleilzation performance. We can vary the approximation factor to change performance / accuracy.

## Linked lists
Hand-over-hand locking is when each node has its own lock and when we traverse it we grab and release as we go.
- performance is an issue with this. Maybe grab every *n* nodes

## Queue
We add a lock for the head and tail to separate the enqueue and dequeue operations.

### References
1. `www.cs.tau.ac.il/ ̃shanir/concurrent-data-structures.pdf` (reference with more info - "Concurrent Data Structures” by Mark Moir and Nir Shavit.")
2. https://pages.cs.wisc.edu/~remzi/OSTEP/threads-locks-usage.pdf

---
status: #🌱 
date: 2022-02-28
tags: [[Operating System]], [[Thread locks]], [[Concurrency]]