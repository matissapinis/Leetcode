# 1. Two Sum
# https://leetcode.com/problems/two-sum/

# Translated O(n) hashmap Ruby solution to Python as suggested by ChatGPT (GPT-4):
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # Initialize an empty dictionary. This will store each number in the list as a key,
        # and the corresponding value will be the index of that number in the list.
        map = {}

        # The 'enumerate' function is used to iterate through each element in the list,
        # along with its index. The variables 'num' and 'i' represent the current element and
        # its index, respectively.
        for i, num in enumerate(nums):
            # Calculate the complement of the current number. If two numbers add up to the target,
            # one number is the complement of the other (target minus the number).
            complement = target - num

            # Check if the complement is in the dictionary. The 'in' keyword checks if a key exists in the dictionary.
            # If the complement exists, it means we have found two numbers that add up to the target.
            if complement in map:
                # Return the indices of the two numbers. 'map[complement]' gets the index of the complement,
                # and 'i' is the index of the current number.
                return [map[complement], i]

            # If the complement is not in the dictionary, add the current number and its index to the dictionary.
            map[num] = i

        # If no two numbers add up to the target, return an empty list.
        return []
