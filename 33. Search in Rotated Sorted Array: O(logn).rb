# 33. Search in Rotated Sorted Array
# https://leetcode.com/problems/search-in-rotated-sorted-array/description/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

# O(logn) algorithm for binary searching target in rotated sorted array:
def search(nums, target)
    # Define the initial bounds of the binary search on whole array:
    l, r = 0, nums.length - 1

    # The loop continues until the left index is greater than the right index:
    while l <= r
        # Take the middle of current binary search interval, dividing it in halves:
        # While m = (l + r) / 2 is more natural, it's prone to integer overflow.
        m = l + (r - l) / 2

        # If midpoint already is target, return it:
        return m if nums[m] == target

        # If left element less than or equal to midpoint, midpoint is in left half of array:
        if nums[l] <= nums[m]
            # If target is in sorted left half (between left index and midpoint), search it by updating right bound less than midpoint:
            if nums[l] <= target && target < nums[m]
                r = m - 1
            # Otherwise, target must be in right half, so update left bound greater than midpoint:
            else
                l = m + 1
            end
        # If the left element is greater than midpoint, midpoint is in right half of array:
        else
            # If target is in sorted right half (between midpoint and right index), search it by updating left bound greater than midpoint:
            if nums[m] < target && target <= nums[r]
                l = m + 1
            # Otherwise, the target must be in left half, update right bound less than midpoint:
            else
                r = m - 1
            end
        end
    end

    # Binary search doesn't find target:
    -1
end
