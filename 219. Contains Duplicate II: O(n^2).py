# 219. Contains Duplicate II
# https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150

# O(n^2) algorithm for checking if there are two distinct indices with absolute difference less or equal to k:
class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        indices_nums = {}

        # Create hashmap with integer as key and array of its indices as value:
        for i in range(len(nums)):
            indices_nums[nums[i]] = indices_nums.get(nums[i], []) + [i]

        # Iterate through hashmap values:
        for indices in indices_nums.values():
            # Skip to next value if integer has no duplicates:
            if len(indices) == 1:
                continue
            # If integer has duplicates, iterate through all pairs of indices:
            else:
                for i in range(len(indices)):
                    for j in range(len(indices)):
                        # Check if indices distinct and their absolute difference is less or equal to k:
                        if indices[i] != indices[j] and abs(indices[i] - indices[j]) <= k:
                            return True
        
        # Return false if there is no such pair of indices:
        return False
