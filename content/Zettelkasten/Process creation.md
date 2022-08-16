---
title: "Process creation"
draft: false
---
# Process creation

1. Load code and static data into from disk/SSD into memory
	1. Earlier OS's would load everything at once. Nowadays OS will load this **lazily** when it's needed using [[Paging]] and [[Swapping]]
2. The OS will setup some arguments in memory such as argc and argv.
3. Linux gives each running process 3 default [[File descriptors]] stdin, stdout, stderr
4. Run's the entry point main()

Some unix ways of creating processes are `fork()`, `exec()`, and `wait()` for waiting on a created process to complete


## Fork()
Calling `fork()` spawns a new process which will execute as if it were returning from the `fork()`.
- The child process has return value of 0 from `fork()`
- The parent process has return valud of the *child PID* from `fork()`

Since we have two processes running we do not know the order that they will execute. The child or the parent could execute in different orders. 	

## Wait() and waitpid()
`wait()` will wait for the child process to terminate before continuing from that line
```c
// spawn child process to do something
int rc_wait = wait(NULL);
printf("Child process complete, I am the parent");
```

There are some cases where wait() returns before the child process ends.

More complete alternative is `waitpid()`

## Exec() and variants
On unix there are some variants:  `exec(): execl, execlp(), execle(), execv(), execvp(), and execvpe()`

Exec loads the code and static data from the executable and **replaces** the current code segment with it.
```c
char *myargs[3];
myargs[0] = strdup("wc"); // program: "wc" (word count)
myargs[1] = strdup("p3.c"); // argument: file to count
myargs[2] = NULL; // marks end of array
execvp(myargs[0], myargs); // runs word count
printf("this shouldn’t print out");
```

### References
1. 

---
status: #🌱 
date: 2022-01-25
tags: [Operating System](Zettelkasten/Operating%20System.md), [Processes](Zettelkasten/Processes.md), [Operating Systems - CS 350](Zettelkasten/Operating%20Systems%20-%20CS%20350.md)