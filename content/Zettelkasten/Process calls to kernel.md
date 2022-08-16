---
title: "User process calls to kernal"
draft: false
---
# User process calls to kernal

User process is running and realizes it needs to do something that requires kernal mode (priviledged operations). Jumping from a user process to a kernel level is called a [[Operating system trap]]

There are 3 circumstances
1.  **Interrupt** (i.e, waiting for harware)
2. **Processor exception** (illegal execution in user mode)
3. **System calls** (asking the kernal to perform some kernal priviledged operation)

Process interrupt
Step 0:
- interrupts are disabled - we are about to go into kernal mode so we need to ensure what we are about to do is not interrupted
	- most systems have hardware buffers to store interrupts that were there when we disabled them so we don't lose that info. So the proper term is **interrupt masked/deferred**

Step 1:
- interrupt received -> save **cause** and **code** in special registers

Step 2: 
- Complete executing instruction being executed then *stop*
- copy stack pointer (**SP**), program counter (**PC**), **EFLAGS** (other important values)-> to special hardware registers to keep track of them
	- These values are copied to special registers
- there is a special place in hardware register that points to **interrupt service routine**
- another special register points to **interrupt stack**

Step 3:
- Set **SP** to **interrupt stack**

Step 4:
- copy **SP**, **PC**, **EFLAGS**, **CAUSE/CODE** registers to kernal interrupt stack

Step 5:
- Set **PC** to **interrupt service routine**
- First instruction is generally to push **all registers** onto stack (this instruction is called *pushad*-push all double). We are saving here **general purpose** registers as opposed to the special registers we already saved.
	- All the stuff saved on the *interrupt stack* is called the **trapframe** (in the context of CS 350)

## References
1. 

---
status: #🌱 
date: 2022-01-17
tags: [Operating Systems - CS 350](Zettelkasten/Operating%20Systems%20-%20CS%20350.md), [Processes](Zettelkasten/Processes.md)