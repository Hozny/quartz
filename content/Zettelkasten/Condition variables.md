---
title: "Condition variables"
draft: false
---
# Condition variables
Allows a thread (or multiple) to sleep and wait on a condition to change to desired state thus waking one (or more) of the waiting threads up. 

We need to hold the lock when signaling, this is to avoid a parent giong to sleep -> a child setting the flag before parent is asleep thus waking no one -> parent sleeps and is never woken up.
- we hold the lock when calling wait since it assumes the lock is being held and frees it atomically

## Producer consumer 
A condition variable can be used to signal a buffer is not empty. 
- Naive condition only works if only one producer and one consumer
- If there are multiple consumers C1 can sleep and be woken up to consume -> but first C2 consumes it thus C1 runs into an empty buffer error
- **Mesa semantics** indicate that condition variables only **suggest** state has changed. **Hoare semantics** provide stronger guarantee that you're awaken only when it is indeed changed.
	- almost all systems follow **Mesa semantics** 
	
We Fix the **Mesa** problem by using while loops with conditionals which ensure when a thread is woken up it rechecks that the state is indeed desired.

Another issue is if there are two consumers and a consumer and producer are asleep with a full buffer -> then C1 wakes up C2 leaving P asleep we have a case where everyone is asleep
- a consumer should **never** wake up another consumer and *vice versa*
### References
1. 

---
status: #🌱 
date: 2022-03-01
tags: [[Operating System]], [[Concurrency]], [[Operating Systems - CS 350]]