# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/description/

# Trivial O(nlogn) algorithm for duplicates in array using built-in sorting:
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        # Sort number array in O(nlogn):
        nums.sort()

        # Iterate through adjacent pairs of sorted numbers to check if they're equal:
        for i in range(len(nums) - 1):
            if nums[i] == nums[i + 1]:
                return True

        # No duplicates found if none of pairs were equal:
        return False
