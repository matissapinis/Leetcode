# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/description/

# @param {Integer[]} nums
# @return {Boolean}

# Trivial O(nlogn) algorithm for duplicates in array using built-in sorting:
def contains_duplicate(nums)
    # Sort number array in O(nlogn):
    nums.sort!

    # Iterate through adjacent pairs of sorted numbers to check if they're equal:
    for i in 0...nums.length
        return true if nums[i] == nums[i + 1]
    end

    # No duplicates found if none of pairs were equal:
    false
end
