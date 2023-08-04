# 219. Contains Duplicate II
# https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for checking if there are two distinct indices with absolute difference less or equal to k:
class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        last_index = {}

        # Iterate over array with hashmap for integer as key and its last seen index as value:
        for i in range(len(nums)):
            # Check if difference between last seen index and current index is less than or equal to k:
            if nums[i] in last_index and i - last_index[nums[i]] <= k:
                return True
            
            # If not, update last seen index of this integer:
            last_index[nums[i]] = i

        # Return false if there is no such pair of indices:
        return False
