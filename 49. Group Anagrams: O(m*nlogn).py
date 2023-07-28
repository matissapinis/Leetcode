# 49. Group Anagrams
# https://leetcode.com/problems/group-anagrams/description/

# Trivial O(m*nlogn) algorithm for grouping anagrams using built-in sorting and hashmap (m – number of words, n – word max length):
"""
1. Create a hashmap with key as sorted string.
2. Add words to hashmap if word is in hashmap.
"""
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        map = {}

        for i in range(len(strs)):
            # Sort each string alphabetically in O(nlogn):
            sorted_string = ''.join(sorted(strs[i]))

            # Appends item to array at sorted string key (creates empty array if map doesn't exist):
            map.setdefault(sorted_string, []).append(strs[i])

        # Returns the group of anagrams as array of all hashmap values:
        return list(map.values())
