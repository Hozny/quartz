---
title: "Merge k-sorted lists "
draft: false
---
# Merge k-sorted lists
problem: given array of k linked lists in ascending order, merge them into one sorted linked-list

n is number of lists, k is number of elements in lists

solution O(n * log(k)):
- split lists into pairs
- merge pairs using standard 2-merge
	- basically it's a nested 2-merge (a merge on lists as whole, and merging the lists themselves)
	
Bad implementation O(n * k^2)
- use 2-merge to merge merge the first two
- remove the second and repeat until u have merged all of them into 1

## References
1. https://leetcode.com/problems/merge-k-sorted-lists/

---
status: #🌱 #🟦 
date: 2021-11-09
tags: [[Leetcode]], [[Programming question]], [[Programming implementation]]
