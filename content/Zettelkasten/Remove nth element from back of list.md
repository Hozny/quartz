---
title: "Remove nth element from back of list "
draft: false
---
# Remove nth element from back of list

Solution:
- Use two pointers: one fast one that is iterated n times initially
- then iterate the two until fast one is at the end, then the slow one is at `end - n`
- **note:** if the fast reaches end in initial iterations then the element is the first element and we must delete it through `return head->next`

```c++
int count = n; 
ListNode* tail = head;
ListNode* cur = head;

while (count--) {
	tail = tail->next;
}
if (tail == nullptr) return head->next;

while (tail->next != nullptr) {
	cur = cur->next;
	tail = tail->next;
}

cur->next = cur->next->next;
return head;
```
## References
1. https://leetcode.com/problems/remove-nth-node-from-end-of-list/

---
status: #🟦 #🌞
date: 2021-11-09
tags: [[Programming question]], [[Two pointer]], [[Leetcode]]
