---
title: "Semaphores"
draft: false
---
# Semaphores
`sem_wait()` decrements and sleeps if value is negative - `sem_post()` increments value

```C
int sem_wait(sem_t *s) {
	// decrement the value of semaphore s by one
	// wait if value of semaphore s is negative
}

int sem_post(sem_t *s) {
	// increment the value of semaphore s by one
	// if there are one or more threads waiting, wake one
}

sem_t m;
sem_init(&m, 0, X); // initialize to X; what should X be?

sem_wait(&m);
// critical section here
sem_post(&m);
```

## Binary semaphore ([[Thread locks | lock]])
Set a semaphore to initial value of 1 and use it as a lock. 

## Sempahores as ordering primitives 
Can be used basically as [[Condition variables]]

Initial value of 0 -> create child -> sem_wait() -> child calls sem_post() -> parent is woken up since value hits 0

## Producer consumer problem (bounded buffer)
```c
void *producer(void *arg) {
	int i;
	for (i = 0; i < loops; i++) {
		sem_wait(&empty); // Line P1
		sem_wait(&mutex); // Line P1.5 (MUTEX HERE)
		put(i); // Line P2
		sem_post(&mutex); // Line P2.5 (AND HERE)
		sem_post(&full); // Line P3
	}
}

void *consumer(void *arg) {
	int i;
	for (i = 0; i < loops; i++) {
		sem_wait(&full); // Line C1
		sem_wait(&mutex); // Line C1.5 (MUTEX HERE)
		int tmp = get(); // Line C2
		sem_post(&mutex); // Line C2.5 (AND HERE)
		sem_post(&empty); // Line C3
		printf("%d\n", tmp);
	}
}
```

## Reader-writer lock
Allow multiple readers but only one writer.
- they often cause a lot of overhead so vareful consideration is required to see if they provide any benefit over simpler primitives


### References
1. https://pages.cs.wisc.edu/~remzi/OSTEP/threads-sema.pdf
2. “The Little Book of Semaphores” by A.B. Downey http://greenteapress.com/semaphores/. Good book on semaphores with puzzles to learn them.

---
status: #🌱 
date: 2022-03-01
tags: [[Concurrency]], [[Operating System]], [[Operating Systems - CS 350]]