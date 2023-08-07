# 1207. Unique Number of Occurrences
# https://leetcode.com/problems/unique-number-of-occurrences/description/?envType=study-plan-v2&envId=leetcode-75

# O(n) algorithm for whether number of occurrences is unique for each array element:
class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        counts, metacounts = {}, {}

        # Create a hashmap for number of occurrences for each element:
        for i in range(len(arr)):
            counts[arr[i]] = counts.get(arr[i], 0) + 1

        # Create a hashmap with occurrence count as key and which element has this count as value:
        for key, value in counts.items():
            metacounts[value] = metacounts.get(value, []) + [key]

        # If several elements have the same occurrence rate, return false:
        for i in metacounts.values():
            if len(i) > 1:
                return False

        # If all elements have difference occurrence rates, return true:
        return True
