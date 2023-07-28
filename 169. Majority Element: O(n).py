# 169. Majority Element
# https://leetcode.com/problems/majority-element/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for majority element in array using built-in max on hashmap:
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        map = {}

        # Creates a hashmap how many instances each number has:
        for i in range(len(nums)):
            map[nums[i]] = map.get(nums[i], 0) + 1

        # Gets the key with the largest value from the map:
        max_element = max(map.items(), key=lambda x: x[1])[0]
        
        # Returns the majority element with largest count:
        return max_element
