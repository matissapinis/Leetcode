# 704. Binary Search
# https://leetcode.com/problems/binary-search/description/

# Binary search in O(logn):
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        # Define the initial bounds of the binary search:
        l, r = 0, len(nums) - 1

        # The loop continues until the left index is greater than the right index:
        while l <= r:
            # Take the middle of current binary search interval, dividing it in halves:
            # While m = (l + r) // 2 is more natural, it's prone to integer overflow (in C++ and Java).
            m = l + (r - l) // 2

            # If target is on left half of interval, update right bound less than midpoint:
            if nums[m] > target:
                r = m - 1
            # If target is on right half of interval, update left bound greater than midpoint:
            elif nums[m] < target:
                l = m + 1
            # Return the index if target is found:
            else:
                return m

        # Binary search doesn't find target:
        return -1
