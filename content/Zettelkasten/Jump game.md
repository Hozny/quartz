---
title: "Jump game "
draft: false
---
# Jump game
Problem: a[i] is how far u can jump, can you reach the end of the list

Solution:
- Notice the limiting factor is when a[i] == 0.
- Need to make sure that we can jump over any 0
- Keep track of max jump we could have made and if a[i] == 0 check that we can go over it

Implementation:
```c++
class Solution {
public:
    bool canJump(vector<int>& nums) {
        int p = 0;
        for (int i = 0; i < nums.size(); ++i) {
            if (nums[i] == 0 && p <= i && i != nums.size() - 1) {
                return false;
            }
            p = max(p, i + nums[i]);
        }
        return true;
    }
};
```
## References
1. 

---
satus: #🟦 #🌞
date: 2021-11-13
tags: [[Programming question]], [[Leetcode]], [[Greedy algorithms]]
