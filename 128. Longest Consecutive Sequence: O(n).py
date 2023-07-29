# 128. Longest Consecutive Sequence
# https://leetcode.com/problems/longest-consecutive-sequence/description/

# O(n) algorithm for length of longest consecutive sequence in array using set data structure:
class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        # Convert the input list to a set to enable O(1) lookups:
        nums_set = set(nums)
        
        max_length = 0
        
        for i in range(len(nums)):
            # If the current number is the start of a sequence, then check for the length of this sequence:
            if (nums[i] - 1) not in nums_set:
                current_length = 0
                # Increment the length of the sequence until a number that is not in the set:
                while (nums[i] + current_length) in nums_set:
                    current_length += 1

                # Change the length of longest sequence if new sequence is longest:
                max_length = max(current_length, max_length)

        # Return the length of the longest consecutive sequence:
        return max_length
