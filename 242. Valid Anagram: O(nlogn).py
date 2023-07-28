# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

# Trivial algorithm if string has anagram using built-in sorting in O(s*log(s) + t*log(t)):
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        # Sort each string in O(nlogn):
        s_sorted = ''.join(sorted(s))
        t_sorted = ''.join(sorted(t))

        # Is anagram if sorted strings are equal:
        return s_sorted == t_sorted
