# 88. Merge Sorted Array
# https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

# Trivial O((m + n) * log(m + n)) algorithm for merging two sorted arrays into sorted array:
class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """

        m = len(nums1)
        n = len(nums2)

        # Replace the last zeroes of `nums1` with `nums2`:
        for i in range(n):
            nums1[m - i - 1] = nums2[i]
        
        # Sort number array in O(xlogx):
        nums1.sort()
