---
title: "Database internals"
draft: false
---
# Database internals
Content mainly based off (for now) Data base internals by Alex Petrov OReilly 

## Content
There are two main subsections; storage engines - which deals with the single node implementations related to storing data / distributed systems - which deals with implementing multiple nodes and distributing the data.

### Common labels for DBMS
1. OLTP - online transactional processing; user-facing, queries predefined and short lived
2. OLAP - online analytical processing; commonly used for data warehousing - handle complex ad-hoc queries that are long-running
3. HTAP hybrid transactional and analytical - properties of both

### Potential DBMS architecture
Specific parts of DBMS are loosely defined and differ across different implementations of databaes.

Example 4 layers
- Transport 
- Query processor
	- query parser -> query optimizer
- Execution engine
	- remote / local execution
- Storage engine
	- transaction / lock manager  (together responsible for concurrency control)
	- access methods (organize data on disk)
	- buffer / recovery manager

### Disk-based vs. Memory based DBMS
Memory is much faster for random access.
- memory is more expensive - so space is limited
- memory is not durable so it requires additional hardware for durability and is harder to manage

In-memory is not just equivalent to disk-based with large cache because of the disk-based overhead when using cache

### Column vs. Row based vs. Wide column
Row based is better when you're accessing rows, column for aggregation/analytics or things that span multiple rows.

Wide column - I don't really understand tbh
- something about multiple 

[[Storage engines]]
- [[B-Tree]]
- [[File formats]]
- [[B-Tree implementation]]
- [[Transaction processing and recovery]]
- [[B-Tree variants]]
- [[Log structured storage]]

[Distributed systems](Distributed%20systems)
- [[Failure detection]]
- [[Leader election]]
- [[Replication and consistency]]
- [[Anti-entropy and dissemination]]
- [[Distributed transactions]]
- [[Consensus]]
## References
1. 

---
status: #🌱 
date: 2022-01-13
tags: [[Databases]], [Programming](Programming)