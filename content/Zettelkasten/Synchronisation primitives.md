---
title: "Synchronisation primitives"
draft: false
---
# Synchronisation primitives
Performing groups of instructions together as **atomic** is an important concept. They are always seen as either all completed or none, never inbetween state. These are sometimes referred to as [[Transactions]]

## Synchronization primitives
Shared buffers / data are on the heap to allow multiple threads to access them. Global data is also shared.

We need H/W support to implement synchronization primitives because we are trying to protect shared data. If we use a shared data object then we have the same problem all over again. So we implement these locks using hardware.

### [[Thread locks | Locks]]
Will lock the CPU from any parrelalization/concurrency to avoid any data race conditions. 

### [[Condition variables]]
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

### [[Semaphores]]


See [[Deadlocks]] to see issues with sync.


### References
1. 

---
status: #🌱 
date: 2022-02-28
tags: [[Operating System]], [[Concurrency]], [[Operating Systems - CS 350]]