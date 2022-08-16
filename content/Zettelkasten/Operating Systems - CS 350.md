---
title: "Operating Systems - CS 350"
draft: false
---
# Operating Systems - CS 350

## Grading
- quizes (5%), assignments (60%), midterm (15%), final (20%)

[[Adress spaces]]
## Content
	- [[Multiprogramming process states]], [[Process control block]], [[Zettelkasten/Context switch]], [[Zettelkasten/Process calls to kernel]]
- Concurrency & Synchronization  
- Scheduling  
- Virtual Memory  
- I/O  
- Disks, File systems, Network file systems  
- Protection & Security  
- Virtual machines  
- Will often use Unix as the example  

Most OSes heavily influenced by Unix (e.g. OS161)  
Windows is a notable exception

## Synchronization primitives
Shared buffers / data are on the heap to allow multiple threads to access them. Global data is also shared.

We need H/W support to implement synchronization primitives because we are trying to protect shared data. If we use a shared data object then we have the same problem all over again. So we implement these locks using hardware.

### Lock 
Will lock the CPU from any parrelalization/concurrency to avoid any data race conditions. 

### Condition variable
Make a thread wait for a variable to change. This allows threads to be in a blocked state instead of ready state when waiting on a variable. This saves CPU cycles. This is also implemented using hardware primitives
- `cond_wait`, `cond_signal`
- we pass a condition variable and a lock to `cond_wait`
	- because we want to check if cond_var is changed. 

Wait
- place yourself on the queue
- release the lock
- wait signal
- receive signal -> lock again

Easy way to implement this is a queue. Condition variable has a queue of threads waiting on it.

### Semaphores
..............................................................

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


## References
1. 

---
status:
date: 2022-01-06
tags: [[Operating system]], [Course outline](Zettelkasten/Course%20outline.md)