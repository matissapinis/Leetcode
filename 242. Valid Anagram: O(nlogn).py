# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

# Trivial solution using built-in sorting in O(s log s + t log t):
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        s_sorted = ''.join(sorted(s))
        t_sorted = ''.join(sorted(t))
        return s_sorted == t_sorted
