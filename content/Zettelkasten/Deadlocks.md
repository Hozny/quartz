---
title: "Deadlocks"
draft: false
---
# Deadlocks
## Deadlocks
If we acquire locks in different orders we can have a deadlock situation.
```
Thread 1:
	acquire lock a
	acquire lock b
	unlock a
	unlock b
Thread 2:
	acquire lock b
	acquire lock a
	unlock b
	unlock a
```
- here t1 can acquire a, t2 acquire b, then t1 stuck trying for b and t2 stuck trying for a
- It is convention to unlock in the order acquired

1. Limited access (mutual exclusion - resource shared by finite users)
2. No preemption (once resource granted, can't be taken away)
3. Multiple independent requests (hold and wait)
	1. don't ask all at once (waits for next resource while holding one)
4. Cirularity in graph of requests

### References
1. 

---
status: #🌱 
date: 2022-02-28
tags: [[Operating System]], [[Synchronisation primitives]], [[Operating Systems - CS 350]]