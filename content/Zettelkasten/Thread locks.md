---
title: "Thread locks"
draft: false
---
# Thread locks
A lock is **available** or **acquired**
- available: unlocked or free
- acquired: locked or held (by us)

## Evaluating locks
1. Correctness: They provide mutual exculsion (*mutex*)
2. Fairness: A thread waiting for a lock eventually gets it (no **starvation**)
3. Performance: CPU cycle efficiency

## Naive locks (no special hardware)
We can use a flag and simply spin (infinite loop checking `flag==1`) when trying to lock the flag. Unlocking sets flag to 0. 
- This doesn't work. 
- T1  checks `flag == 1 == false` , T2 sets flag to 1, T1 sets flag to 1
	- both threads think they acquired it
	- this is becase to lock it we `test` then `set`, inbetween them someone else can `set`

## Hardware primitives (special instructions)
### test-and-set primitive hardware
```c
int TestAndSet(int *old_ptr, int new) {
	int old = *old_ptr; // fetch old value at old_ptr
	*old_ptr = new; // store ’new’ into old_ptr
	return old; // return the old value
}
```
- atomically returns the old value and sets it to a new value

### load-linked and store-conditional
load-linked loads a value
- store-conditional stores *only if* no other value has been written to that variable

### fetch-and-add
atomically increments value and returns old
- implement ticketing locks where threads get a place in line and go when it is their turn
ticketing locks ensure **fairness**

## Implementing locks
### spin locks
```c
void init(lock_t *lock) {
	// 0: lock is available, 1: lock is held
	lock->flag = 0;
}

void lock(lock_t *lock) {
	while (TestAndSet(&lock->flag, 1) == 1)
	; // spin-wait (do nothing)
}

void unlock(lock_t *lock) {
	lock->flag = 0;
}
```
- these require a **preemptive [[Operating system scheduler | scheduler]]** since the thread needs to be interrupted so that another thread can free the lock while it's spinning

### Futex locks 
Put a thread to sleep and wake them up when the lock is free to avoid spinning.
- ensure **fairness** and increase **performance**

### Hybrid locks
**Two-phase** are instance of hybrid locks and will spin the first time they try to get a lock. Spinning the first time is useful if you end up getting the lock since it saves time. If they fail they enter a second phase where they use a **futex** to sleep and wait.


### References
1. https://pages.cs.wisc.edu/~remzi/OSTEP/threads-locks.pdf 

---
status: #🌱 
date: 2022-02-28
tags: [[Operating System]], [[Threads]], [[Operating Systems - CS 350]]