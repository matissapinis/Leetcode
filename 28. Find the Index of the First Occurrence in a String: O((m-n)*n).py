# 28. Find the Index of the First Occurrence in a String
# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/?envType=study-plan-v2&envId=top-interview-150

# Brute force O((m - n) * n) algorithm for finding index of first occuring substring:
class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        m = len(haystack)
        n = len(needle)

        # Iterate through haystack from index i to m - n considering slicing:
        for i in range(0, m - n + 1):
            # Return index if needle length n equal to haystack sliced from i to (i + n):
            if needle == haystack[i : (i + n)]:
                return i
        
        # No needle was found in haystack:
        return -1
