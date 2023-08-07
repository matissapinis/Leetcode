# 643. Maximum Average Subarray I
# https://leetcode.com/problems/maximum-average-subarray-i/description/?envType=study-plan-v2&envId=leetcode-75

# Brute force O(n^2) algorithm for maximum average value of contiguous k-subarrays (exceeds time limit):
class Solution:
    def findMaxAverage(self, nums: List[int], k: int) -> float:
        # Initialize maximum average as smallest possible value:
        max_average = float('-inf')

        # Iterate through all contiguous subarrays by slicing:
        for i in range(len(nums) - k + 1):
            # Take average as sum divided by count:
            current_average = sum(nums[i : i + k]) / k

            # Update maximum average if new average is greatest:
            max_average = max(max_average, current_average)
        
        # Return the maximum average value of all contiguous subarrays:
        return max_average
