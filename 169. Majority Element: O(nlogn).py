# 169. Majority Element
# https://leetcode.com/problems/majority-element/description/?envType=study-plan-v2&envId=top-interview-150

# O(nlogn) algorithm for majority element in array using built-in sorting on hashmap:
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        map = {}

        # Creates a hashmap how many instances each number has:
        for i in range(len(nums)):
            map[nums[i]] = map.get(nums[i], 0) + 1

        # Sorts key-value pairs by values (biggest to lowest) and returns largest pair:
        max_pair = sorted(map.items(), key=lambda x: x[1], reverse=True)[0]
        
        # Returns key from topmost key-value pair by value (i.e., majority element with largest count):
        return max_pair[0]
