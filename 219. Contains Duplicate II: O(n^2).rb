# 219. Contains Duplicate II
# https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}

# O(n^2) algorithm for checking if there are two distinct indices with absolute difference less or equal to k:
def contains_nearby_duplicate(nums, k)
    indices_nums = {}

    # Create hashmap with integer as key and array of its indices as value:
    nums.each_with_index do |num, i|
        indices_nums[num] = [] unless indices_nums.has_key?(num)
        indices_nums[num] << i
    end

    # Iterate through hashmap values:
    indices_nums.values.each do |indices|
        # Skip to next value if integer has no duplicates:
        next if indices.size == 1
        
        # If integer has duplicates, iterate through all pairs of indices:
        indices.each do |index_i|
            indices.each do |index_j|
                # Check if indices distinct and their absolute difference is less or equal to k:
                return true if index_i != index_j && (index_i - index_j).abs <= k
            end
        end
    end

    # Return false if there is no such pair of indices:
    false
end

