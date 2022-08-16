---
title: "Operating system timer"
draft: false
---
# Operating system timer
The hardware has a timer which executes a specific code which is defined on boot by the **trap table** see [Operating system trap](Zettelkasten/Operating%20system%20trap.md)

The hardware has responsibiltity for saving key information when the timer fires s.t. the OS can resume the process that was running before the timer interrupted.


The OS starts the timer with a priviledged instruction.
- OS can also stop the timer with a priviledged instruction

### References
1. 

---
status: #🌱 
date: 2022-01-26
tags: [Operating System](Zettelkasten/Operating%20System.md)