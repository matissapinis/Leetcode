# 392. Is Subsequence
# https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=top-interview-150

# O(m + n) algorithm for evaluating if one string is subsequence of another:
class Solution:
    def isSubsequence(self, s: str, t: str) -> bool:
        # Initialize array to check if each character in `s` was found:
        character_found = [False] * len(s)

        # Iterate through characters in `t` and `s` with two pointers:
        l, r = 0, 0
        while l < len(t) and r < len(s):
            # If match found, save as found and start checking next in `s`: 
            if t[l] == s[r]:
                character_found[r] = True
                r += 1

            # If match not found, keep searching through `t`:
            l += 1

        # If some character wasn't found, it's not a subsequence:
        for truth_value in character_found:
            if truth_value == False:
                return False
        
        # If all characters in sequence were found, it is a subsequence:
        return True
