# 643. Maximum Average Subarray I
# https://leetcode.com/problems/maximum-average-subarray-i/description/?envType=study-plan-v2&envId=leetcode-75

# O(n) algorithm for maximum average value of contiguous k-subarrays:
class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        # Initialize current and max average as average of first contiguous subarray size k:
        current_average = sum(nums[0 : k]) / k
        max_average = current_average

        # Iterate through array with sliding window of subarrays after the first one:
        for i in range(k, len(nums)):
            # Subtract the leftmost and add the rightmost value to sum when calculating new average:
            current_average = (current_average * k - nums[i - k] + nums[i]) / k

            # Update maximum average if new average is greatest:
            max_average = max(max_average, current_average)
        
        # Return the maximum average value of all contiguous subarrays:
        return max_average
