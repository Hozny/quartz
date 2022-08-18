---
title: "Operating System"
draft: false
---
# Operating System
An operating system is an abstraction of physical resources.
- resource manager, virtual machine (virtualizes the physical hardware)

## Three pieces of an OS
[[Virtualization]]
- [[Processes]], [[Virtual memory]]
- two identical programs can point to the same "address" in memory because the OS virtualizes their **virtual address space**
- they each see their own scope of memory (a process thinks it sees the entire memory)

[[Concurrency]]
- [[Threads]] are like multiple functions running within the same memory space

[[Persistance]]
- the [[File system]] is the part of the OS that manages the persistant files on a computer


## Security
Operating system is in **supervisor mode**, user is in **unpriviledged mode**. User makes request to OS which then touches resources and responds.
![](Zettelkasten/Pasted%20image%2020220106121823.png)

Operating systems need [[Operating system multitasking \| multitatsking]]

Application vs. Process
- a process is somethingly actively running (processed) by the cpu


## References
1. 

---
status: #🌱 
date: 2022-01-06
tags: [Operating systems - CS 350](Operating%20systems%20-%20CS%20350.md), 