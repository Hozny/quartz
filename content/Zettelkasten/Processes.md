---
title: "Processes"
draft: false
---
# Processes
A process is a program that is running on the OS (a program that is running is a process). 
- Chrome.exe is a program, clicking Chrome.exe to start it starts a process.

Throughput
- How many processes a CPU can handle per (some) time

A process has its own view of the machine
- its own address space, its own open files, its own virtual cpu, ...
- it's memory is called virtual memory (since it is a chunk of total RAM)

Process API
- Create, Destroy, Wait, Miscellaneous control (e.g, suspend), Status
- [[Process creation]]



The OS maintains a [[Process list]] which is combrised of many  [Process control block](Process%20control%20block)s to keep track of the different processes


How does the OS allow execution of different processes?
- [Limited direct execution](Zettelkasten/Limited%20direct%20execution.md)
[Process calls to kernel](Zettelkasten/Process%20calls%20to%20kernel.md)
## References
1. https://pages.cs.wisc.edu/~remzi/OSTEP/cpu-intro.pdf

---
status:
date: 2022-01-10
tags: [Operating Systems - CS 350](Operating%20Systems%20-%20CS%20350.md), [Operating System](Operating%20System.md), [Programming](Programming)