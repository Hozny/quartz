---
title: "CAP theorem "
draft: false
---
# CAP theorem

## Theorem:
A distributed system can only ever satisfy 2 of the following 3:
- availability, consistency, partitian tolerance

Availability: any live node in the system must respond to requests (cannot ignore them)

Consistency: reads to a node must return the freshest value (a write followed by a read to any node always returns the newly written value)

Partitian tolerance: Any number of disconnections between nodes in the system can be handled

**Proof the 3 can't ever hold:**
- create a system with total partitional failure (nodes are disconnected)
- write to node1
- read from node2
	- this read must respond, node1 can't communicate with node2 hence node2 responds with a *stale* value

Hence we have shown for any distributed system there exists a configuration where the 3 cannot simultaneuosly hold.

## References
1. visual proof: https://mwhittaker.github.io/blog/an_illustrated_proof_of_the_cap_theorem/

---
status: #🌞 #🟫
date: 2021-11-17
tags: [[Databases]], [[Distributed systems]]
