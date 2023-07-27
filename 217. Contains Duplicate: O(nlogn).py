# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/description/

# Trivial solution using built-in sorting in O(nlogn):
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        nums.sort()

        for i in range(len(nums) - 1):
            if nums[i] == nums[i + 1]:
                return True
                
        return False
