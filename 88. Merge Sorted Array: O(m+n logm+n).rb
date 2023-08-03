# 88. Merge Sorted Array
# https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n

# Trivial O((m + n) * log(m + n)) algorithm for merging two sorted arrays into sorted array:
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    m = nums1.length
    n = nums2.length

    # Replace the last zeroes of `nums1` with `nums2`:
    for i in 0...n do
        nums1[m - i - 1] = nums2[i]
    end
    
    # Sort number array in O(xlogx):
    nums1.sort!
end
