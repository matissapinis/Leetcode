# 1. Two Sum
# https://leetcode.com/problems/two-sum/description/

# Brute force O(n^2) algorithm to return two indices that sum up to target:
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # Iterate through pairs of numbers (if equal skip, else check if sum to target):
        for i in range(len(nums)):
            for j in range(len(nums)):
                if i == j:
                    continue
                if nums[i] + nums[j] == target:
                    return [i, j]
