# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/description/

# O(n) algorithm for duplicates in array with hashmap of each number count:
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        map = {}

        for i in range(len(nums)):
            # If number is in dictionary then it appears twice:
            if nums[i] in map:
                return True

            # Increase number count by one (make map if doesn't exist):
            map[nums[i]] = map.get(nums[i], 0) + 1

        # Return false if there were no duplicates found:
        return False
