# 26. Remove Duplicates from Sorted Array
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}

# # O(n) algorithm for number and in-place array of unique elements in sorted array:
def remove_duplicates(nums)
    # Initialize left and right index for going through array:
    l, r = 0, 1

    # Array has at least one unique element (according to constraints):
    k = 1

    # Iterate through array right-to-left:
    while l < nums.length && r < nums.length
        # If right element is duplicate of left, keep going right:
        if nums[l] == nums[r]
            r += 1
        # If different, save left-next spot, increase unique count and move left:
        else
            nums[l + 1] = nums[r]
            k += 1
            l += 1
        end
    end

    # Return the number of unique elements:
    return k
end
