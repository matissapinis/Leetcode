# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False

        # Build a hashmap of each character in string, then compare hashmaps in O(s + t):
        count_s, count_t = {}, {}
        for i in range(len(s)):
            # Increment character counter by one (with 'get' method if map doesn't exist):
            count_s[s[i]] = count_s.get(s[i], 0) + 1
            count_t[t[i]] = count_t.get(t[i], 0) + 1

        for c in count_s:
            if count_s[c] != count_t.get(c, 0):
                return False
        
        return True
