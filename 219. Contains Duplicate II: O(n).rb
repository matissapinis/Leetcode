# 219. Contains Duplicate II
# https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}

# O(n) algorithm for checking if there are two distinct indices with absolute difference less or equal to k:
def contains_nearby_duplicate(nums, k)
    last_index = {}

    # Iterate over array with hashmap for integer as key and its last seen index as value:
    nums.each_with_index do |num, i|
        # Check if difference between last seen index and current index is less than or equal to k:
        return true if last_index.has_key?(num) && i - last_index[num] <= k
        
        # If not, update last seen index of this integer:
        last_index[num] = i
    end
    
    # Return false if there is no such pair of indices:
    false
end

