---
title: "Operating system threads"
draft: false
---
# Operating system threads

A thread is abstractly similar to a process. Threads allow concurrenct **within a userspace** whereas processes allow concurrency in the kernel space by running multiple programs concurrently.
- Threads all belong to a process. Killing a [[Processes | process]] kills all its threads.

Threads share the parent process' address space.


Each thread has a separate stack t
	
## Creating a thread
We pass a pointer to the function within our process that we want our thread to run on. 
- notice when we fork a process it continues on the next line we don't specify a line 

## n : m (no to m) threading
We usually have n < m (user to kernel threads) 
- kernel threads are more expensive so really we just want usually 1 thread per processer
- then each virtual user thread is able to run on multiple kernel threads (that way we can take advantage of multiprocessor cpu)

## Concurrency solution requirements
We need a way to be able to protect **critical sections** in code where concurrency can break things.

Mutual exclusion
- No two threads can be in a critical section at the same time
Progress
- If no thread is in a critical section then *a* thread will get in
Bounded waiting
- If thread A is trying to get in, thread B can't repeatedly exit and enter forever

### References
1. 

---
status: #🌱 
date: 2022-01-31
tags: [[Operating Systems - CS 350]], [[Operating System]]