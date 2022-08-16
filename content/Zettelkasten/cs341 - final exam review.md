---
title: "cs341 - final exam review"
draft: false
---
# cs341 - final exam review
## Recursion & Master theorem
T(n) = a\*T(n/b) + c \* n^k
- Theta(n^k) if a < b^k
- Theta(n^k log n) if a = b^k 
- Theta(n^(log_b a)) if a > b^k

### Substitution
Make a guess and inductively prove.
- substitute the guess for T(n)
- prove the base case (boundary)

**change variables** if it helps to change the recurrence to something more common in terms of another variable
![[Pasted image 20220415154746.png]]
## Turing reduction

## Algorithm from lectures
2SUM - Two pointer method O(n)
3SUM - O(n^2) : call 2SUM on each value
Count inversions - O(n log n) : divide and conquer
Closest points - O(n log n) : divide and conquer
- Sort by X -> split them in half
- S <- points within d of middle line, sorted by y-value
	- The points q, r separated by the mid-line are within 8-possible regions of each other, so sorted-by y value they are at most 8 points apart
	- So merging left and right closest points is O(n)
	
Karatsuba multiplication : O(n^lg 3) divide and conquer
- eliminate one of the 4 required multiplications when merging

Matrix multiplication : O(n^lg 7) divide and conquer (7 multiplications instead of 8)
Maximum disjoint sets : O(n log n) greedy
- maximum interval count scheduling : sort by end greedy pick

Minimize lateness of jobs: O(n log n)
- sort and complete jobs in order of earliest deadline

Fractional knapsack: O(n log n)
- sort by value/weight and greedily pick maximal amount

Split strings into words: O(n^2)
- dp[k] is true if dp[j] and string[j+1, k] is a word

Longest increasing subsequence: O(n^2)
- dp[i] is the lenght of LIS ending at i
- check all j\<i that are less than than a[i] and max of that + 1 is dp[i]

Longest common subsequence LCS: O(n \* m)
- LCS(n[i], m[j]) = 1 + LCS(n[i-1], m[j-1]) if n[i] == m[j] 
- or max(LCS(n[i-1], m[j]), LCS(n[i], m[j-1]))
- can use LCS to solve LIS -> LCS(a, sorted a)

Comput edit distance : O(n \* m)

Maximum weighted intervals: O(n^2)
- sort by end points
- dp[i] is max weight using up to ith interval
- dp[i] = max(dp[i-1], w[i] + dp[j] where j is latest (largest j) non-overlaping interval)

0-1 Knpwsack : O(n^2)
- order items from 1..n but no particular order
- dp[w][i] is the maximum value using up to the ith item with weight w
- dp[w][i] = max(
	- dp[w][i-1] # don't use ith item
	- dp[w-w[i]][i-1]  # use i )
- you loop from w=0..W where W is maximum weight

Construct optimal binary tree: O(n^3)
Algorithm to compute all cut vertices: DFS
Detecting cycle in graph: if dfs has back edge
Topological sort of acyclic graph: 
- DFS reverse order

Kruskal algorithm : O(m log n)
- Go through edges in order of weight - if edge doesn't connect two vertices in same component, add it

Union-Find DS

Prim's Algorithm : O(m log n)
- Start at a vertex and choose minimum edge that is not connected to current component

Djikstra - No negative weights : O(m log n)

Single source shortest path in DAG: O(n + m)
- remove edges with no possible path (top. sort and remove all b4 s)
- for 1..n: for every edge (vi, vj), if di + w(vi, vj) < dj <- dj = di + w(vi, vj)

Bellman ford (dynamic prog.) - shortest no negative cycles : O(n \* (n + m))
- dp_i[v] = shortest path from s to v using <= i edges
- dp_i[v] = min (dp_i[v], dp_i-1[u] + w(u, v)) for all (u, v)

Floyd-warshall all pairs shortest path (no neg. cycles) : O(n^3) 
- dp_i[u][v] is shortest path from u->v using intermediate vertices 1..vi
- dp_i[u][v] = min(dp_i-1[u][v], dp_i-1[u][i] + dp_i-1[i][v])
## Prove a problem is NP-complete

NP problems are decision problems which can be verified in polynomial time given a certificate.

X is NP-Comp if  (how to prove)
- X is in NP
- every Y in NP, Y <=p X

![[Pasted image 20220418172104.png]]
TSPDec
- is there a complete cycle with weight <= k

3SATDec
- and of clauses which has 3 literals

## Graph algorithm with approximations
### Vertex Cover approx
- Greedy remove vertex that covers the most things
- Greedy if theres some edge uncovered (u, v)
	- add u, v to C and remove all edges touching them 

The second one is better |C| <= 2|C_opt|
- the chosen edges form a matching (no two edges share a vertex)
- |C_opt| >= |M|
- a vertex in C_opt covers at most one edge in |M| since they're disjoint so -> |C_opt| >= |M|
- |M| = |C| / 2 since our algorithm picks each endpoint of an edge in M 

### Euclidean TSP approx
Build an MST
- shortcut the visited nodes
- the shortcut cycle is <= 2 |weight of MST| since it decreases by triang. ineq.
- the weight of MST <= weight of TSP since removing an edge from TSP makes a tree and this is the Minimum tree
- then short-cut <= 2|MST| <= 2|TSP|

## Greedy algorithm & proof
[[Greedy algorithms]]
Two ways to prove:
- show greedy stays ahead always
- exchange proof : given optimal solution exchange it to arrive at greedy

Greedy problem: buildings and antennas
- sort buildings by right endpoint
- start at the leftmost right endpoint
- keep going until a building's leftside is larger than previous antenna
	- set the next antenna to the next biggest right endpoint

Proof:
- show that these antennas are blased on k buildings and these buildigns have no overlap
- so we need at least k antennas for this 
- so by exchange proof: we have any solution is at least k, we have k so it is optimal

Trails with happiness score and deadline
- explore in reverse days from the end
- add all trails that expire on that day to accessible list
- explore the maximum one

Proof (exchange):
- find the first spot from the end (latest spot) where the optimal sol. is different than the current one.
	- if it explores that trail at an earlier date then we can swap it with the current day
	- if it doesn't explore that trail then it's a contradiction because by construction, j, the item we chose, is the highest reward item acessible on that day

## Dynamic programming & proof

3D Knapsack
- dp[v][w][i] -> maximum score of item with value <= v , weight <= w, using items 1..i
- for i..N : for v 0.. V : for w.. W : 
	- if v > vi and w > wi : dp[v][w][i] = max (dp[v][w][i-1],pi +  dp[v-vi][w-wi][i-1] )
	- else:

Goose eggs being dropped
- DP[i][j] = x the number of drops required to figure it out with i floors and j eggs
- dp[i][j] = min( max(dp[a][j-1], dp[i-a][j]) ) for all a<=i
	
### References
1. 

---
status: #🦴  
date: 2022-04-15
tags: [[Algorithms - CS 341]], [[Algorithms]]