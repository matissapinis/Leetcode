# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

# O(n) algorithm if string has anagram using hashmaps:
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        # Cannot be anagram if lengths of strings are different:
        if len(s) != len(t):
            return False

        # Build a hashmap of each character in string, then compare hashmaps in O(|s|):
        count_s, count_t = {}, {}
        for i in range(len(s)):
            # Increment character counter by one (with 'get' method if map doesn't exist):
            count_s[s[i]] = count_s.get(s[i], 0) + 1
            count_t[t[i]] = count_t.get(t[i], 0) + 1

        # Not an anagram if character counts aren't equal between strings:
        for c in count_s:
            if count_s[c] != count_t.get(c, 0):
                return False

        # Is an anagram if no character counts were different:
        return True
