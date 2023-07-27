# 49. Group Anagrams
# https://leetcode.com/problems/group-anagrams/description/

"""
1. Create a hashmap with key as sorted string.
2. Add words to hashmap if word is in hashmap.
"""
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        map = {}

        for i in range(len(strs)):
            sorted_string = ''.join(sorted(strs[i]))

            # Appends item to array at sorted string key (creates empty array if map doesn't exist):
            map.setdefault(sorted_string, []).append(strs[i])

        # Returns the group of anagrams as array of all hashmap values:
        return list(map.values())
