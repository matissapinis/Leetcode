# 153. Find Minimum in Rotated Sorted Array
# https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/description/

# O(logn) algorithm for binary searching minimum in rotated sorted array:
class Solution:
    def findMin(self, nums: List[int]) -> int:
        # Define the initial bounds of the binary search on the whole array:
        L, R = 0, len(nums) - 1

        # The loop continues until the left index is greater than the right index:
        while L < R:
            # Take the middle of the current binary search interval, dividing it in halves:
            # While M = (L + R) // 2 is more natural, it's prone to integer overflow (in C++ and Java).
            M = L + (R - L) // 2

            # If right bound is less than midpoint, minimum element is in right half, so update left bound:
            if nums[M] > nums[R]:
                L = M + 1
            # Otherwise, minimum element is in left half (including M), so update right bound:
            else:
                R = M

        # When bounds meet the minimum element is found:
        return nums[L]
