# 205. Isomorphic Strings
# https://leetcode.com/problems/isomorphic-strings/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for checking if two strings are isomorphic (cf. 290. Word Pattern):
class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
        indices_s, indices_t = {}, {}

        # Create hashmaps with character as key and its position array as value:
        for i in range(len(s)):
            indices_s[s[i]] = indices_s.get(s[i], []) + [i]
            indices_t[t[i]] = indices_t.get(t[i], []) + [i]
            
        # No isomorphism if letter count in strings is not equivalent:
        if len(indices_s.values()) != len(indices_t.values()):
            return False

        # Iterate and compare values of the two hashmaps – return false if isomorphism ruined:
        for (key_s, value_s), (key_t, value_t) in zip(indices_s.items(), indices_t.items()):
            if value_s != value_t:
                return False  

        # Return true if the character position lists match:
        return True
