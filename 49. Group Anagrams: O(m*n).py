# 49. Group Anagrams
# https://leetcode.com/problems/group-anagrams/description/

# O(m*n) algorithm for grouping anagrams using hashmaps (m – number of words, n – word max length):
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        map = {}

        for s in strs:
            # Counter for each letter from "a" to "z":
            count = [0] * 26

            # Increase the count for each letter (maps ASCII value to array index):
            for c in s:
                count[ord(c) - ord("a")] += 1
            
            # Add string as value with key of letter count mapping:
            map.setdefault(tuple(count), []).append(s)

        # Returns the group of anagrams as array of all hashmap values:
        return map.values()
