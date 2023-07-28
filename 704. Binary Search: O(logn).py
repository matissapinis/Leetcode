# 704. Binary Search
# https://leetcode.com/problems/binary-search/description/

# Binary search in O(logn):
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        # Define the initial bounds of the binary search:
        L, R = 0, len(nums) - 1

        while L <= R:
            # Take the middle of current binary search interval, dividing it in halves:
            # While M = (L + R) // 2 is more natural, it's prone to integer overflow.
            M = L + (R - L) // 2
            
            # If target is on right half of interval, update left bound greater than midpoint:
            if nums[M] < target:
                L = M + 1
            # If target is on left half of interval, update right bound less than midpoint:
            elif nums[M] > target:
                R = M - 1
            # Return the index if target is found:
            else:
                return M

        # Binary search doesn't find target:
        return -1
