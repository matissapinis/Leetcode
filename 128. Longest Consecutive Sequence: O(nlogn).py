# 128. Longest Consecutive Sequence
# https://leetcode.com/problems/longest-consecutive-sequence/description/

"""
1. Sort the number list.
2. Iterate of sorted number list, saving max consecutive sequence length.
3. If current consecutive sequence ends, start a new one.
"""
class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        nums.sort()

        if len(nums) == 0:
            return 0

        max_length = 1
        current_length = 1

        for i in range(len(nums) - 1):
            if nums[i + 1] == nums[i] + 1:
                current_length += 1
                if current_length > max_length:
                    max_length = current_length
            elif nums[i + 1] == nums[i]:
                continue
            else:
                current_length = 1
        
        return max_length
