---
title: "Limited direct execution"
draft: false
---
# Limited direct execution
The idea is to let processes run directly on the CPU with *limitations*
- in user mode a process cannot access certain instructions / IO

The OS will start the [Process creation](Zettelkasten/Process%20creation.md). Then once the process is done the OS takes control back and frees memory.

To execute priviledged commands the process must call a [[System call]] which is a synchronous call to the kernel to execude specific priviledged instructions.
- The **system call handler** will use the **trap table** to invoke the specific OS (kernel) code it should run
- The user process leaves a code somewhere then traps into the kernel where the **trap handler** will handle based on the code provided
	- this allows user code to indirectly define what code it wants to run then the kernel performs additional checks
- see also [Operating system trap](Zettelkasten/Operating%20system%20trap.md) to elevate into kernel mode

CPU has a mode bit (*Dual mode execution system*)
- assuming it is 1 bit is a simplification there is more to it than 1 bit
- this allows some instructions to be executed in **user mode**
- some instructions are only allowed in **priviledged mode**

## Steps for LDE protocol
On boot
- initialize trap table and CPU remembers location for later
Running a process
- OS sets up a few things (allocate memory, create node on process list, ..., [Process creation](Zettelkasten/Process%20creation.md))
- Process runs
- Process calls [System call](System%20call) which [Operating system trap](Zettelkasten/Operating%20system%20trap.md) into the OS
- OS returns from trap
- Process completes
- OS cleans up process

## OS taking control when a process is running
The OS uses an [[Operating system timer]] which calls an interrupt every x amount of time forcing the OS to take control.
- notice the timer triggers *hardware* to save some registers, then context switching saves register using *software*

After the interrupt gives OS control again the [Operating system scheduler](Zettelkasten/Operating%20system%20scheduler.md) decides whether or not to perform a [Context switch](Zettelkasten/Context%20switch.md) to a different process.

## LDE flow
![](Assets/Pasted%20image%2020220126164122.png)
### References
1. kk

---
status: #🌱 
date: 2022-01-26
tags: [Processes](Zettelkasten/Processes.md), [Operating System](Zettelkasten/Operating%20System.md), [Operating Systems - CS 350](Zettelkasten/Operating%20Systems%20-%20CS%20350.md)