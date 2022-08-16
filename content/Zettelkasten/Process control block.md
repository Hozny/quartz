---
title: "Process control block"
draft: false
---
# Process control block
A fancy term for a C struct which contains key information about a process.
- sometimes called a **process descriptor**

Example process control block:
```c
// the registers xv6 will save and restore
// to stop and subsequently restart a process
struct context {
	int eip;
	int esp;
	int ebx;
	int ecx;
	int edx;
	int esi;
	int edi;
	int ebp;
};
// the different states a process can be in
enum proc_state { UNUSED, EMBRYO, SLEEPING, RUNNABLE, RUNNING, ZOMBIE };
// the information xv6 tracks about each process
// including its register context and state
struct proc {
	char *mem;                  // Start of process memory
	uint sz;                    // Size of process memory
	char *kstack;               // Bottom of kernel stack
		                        // for this process
	enum proc_state state;      // Process state
	int pid;                    // Process ID
	struct proc *parent;        // Parent process
	void *chan;                 // If !zero, sleeping on chan
	int killed;                 // If !zero, has been killed
	struct file *ofile[NOFILE]; // Open files
	struct inode *cwd;          // Current directory
	struct context context;     // Switch here to run process
	struct trapframe *tf;       // Trap frame for the // current interrupt
};
```
- The xv6 Proc Structure (unix-like teaching OS)

## References
1. 

---
status: #🌱 
date: 2022-01-17
tags: [Operating Systems - CS 350](Zettelkasten/Operating%20Systems%20-%20CS%20350.md), [Operating System](Zettelkasten/Operating%20System.md), [Processes](Zettelkasten/Processes.md)