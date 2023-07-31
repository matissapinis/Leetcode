# 153. Find Minimum in Rotated Sorted Array
# https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/description/

# @param {Integer[]} nums
# @return {Integer}

# O(logn) algorithm for binary searching minimum in rotated sorted array:
def find_min(nums)
    # Define the initial bounds of the binary search on the whole array:
    l, r = 0, nums.length - 1

    # The loop continues until the left index is greater than the right index:
    while l < r
        # Take the middle of the current binary search interval, dividing it in halves:
        # While m = (l + r) / 2 is more natural, it's prone to integer overflow (in C++ and Java).
        m = l + (r - l) / 2

        # If right bound is less than midpoint, minimum element is in right half, so update left bound:
        if nums[m] > nums[r]
            l = m + 1
        # Otherwise, minimum element is in left half (including 'm'), so update right bound:
        else
            r = m
        end
    end

    # When bounds meet the minimum element is found:
    return nums[l]
end
