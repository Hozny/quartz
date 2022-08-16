---
title: "Adress spaces"
draft: false
---
# Adress spaces
Adress space contains the code, stack, and heap.

## dynamic relocation
each program has a base and bound register (implemented by hardware) 
- hardware adds base to va to get pa and double checks its legal within bound

A single bit lets the processor know if it is in user mode or priviledged mode.

internal fragmentation
## Segmentation
top two bits: 
- 00 -> code
- 01 -> heap
- 10 -> 

### Stack
- va (offset) - max_size (bound) + base (base address)

external fragementation is the space wasted between segments

## Paging
Split memory into fixed sizes segments. 
- Os keeps a per-process data structure called a page table to allow address translation


### References
1. 

---
status: #🌱 
date: 2022-03-18
tags: [[Operating System]], [[Operating Systems - CS 350]]