# 1. Two Sum
# https://leetcode.com/problems/two-sum/description/

# O(n) algorithm for indices of two elements summing to target using hashmap:
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # Initialize empty dictionary to store each number as key with value as index plus one of that number:
        map = {}

        # Iterate through each element in the list, along with its index:
        for i, num in enumerate(nums):
            # If two numbers add up to target, one number is the complement of the other (target minus number):
            complement = target - num

            # Check if complement is in dictionary (if yes, we have found two numbers that add up to target):
            if complement in map:
                # Return indices of the two numbers ('map[complement]' – complement index, 'i' – current number):
                return [map[complement], i]

            # If complement is not in dictionary, add current number and its index (added by one):
            map[num] = i

        # If no two numbers add up to target, return empty list:
        return []
