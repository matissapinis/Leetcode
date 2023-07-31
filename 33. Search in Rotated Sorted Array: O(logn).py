# 33. Search in Rotated Sorted Array
# https://leetcode.com/problems/search-in-rotated-sorted-array/description/

# O(logn) algorithm for binary searching target in rotated sorted array:
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        # Define the initial bounds of the binary search on whole array:
        l, r = 0, len(nums) - 1

        # The loop continues until the left index is greater than the right index:
        while l <= r:
            # Take the middle of current binary search interval, dividing it in halves:
            # While m = (l + r) // 2 is more natural, it's prone to integer overflow (in C++ and Java).
            m = l + (r - l) // 2

            # If midpoint already is target, return it:
            if nums[m] == target:
                return m

            # If left element less than or equal to midpoint, midpoint is in left half of array:
            if nums[l] <= nums[m]:
                # If target is in sorted left half (between left bound and midpoint), search it by updating right bound less than midpoint:
                if nums[l] <= target and target < nums[m]:
                    r = m - 1
                # Otherwise, target must be in right half, so update left bound greater than midpoint:
                else:
                    l = m + 1
            # If the left element is greater than midpoint, midpoint is in right half of array:
            else:
                # If target is in sorted right half (between midpoint and right bound), search it by updating left bound greater than midpoint:
                if nums[m] < target and target <= nums[r]: 
                    l = m + 1
                # Otherwise, the target must be in left half, update right bound less than midpoint:
                else:
                    r = m - 1

        # Binary search doesn't find target:
        return -1
