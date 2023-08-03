# 88. Merge Sorted Array
# https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

# 88. Merge Sorted Array
# https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n

# O(m + n) algorithm for merging two sorted arrays into sorted array:
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    # Initialize left index at end of non-zeroes `nums1`, right – `nums2`:
    l, r = m - 1, n - 1

    # Initialize pointer where the larger element will be placed:
    i = m + n - 1
    
    # Iterate from non-zeroes end of `nums1` and from `nums2`, comparing and putting at pointer:
    while r >= 0
        # If `nums1` element is larger than `nums2`, also decrement the left index:
        if l >= 0 && nums1[l] > nums2[r]
            nums1[i] = nums1[l]
            l -= 1
        # If `nums1` element is less or equal to `nums2`, also decrement the right index:
        else
            nums1[i] = nums2[r]
            r -= 1
        end

        # Move right to the next position (until the merged array is sorted):
        i -= 1
    end
end
