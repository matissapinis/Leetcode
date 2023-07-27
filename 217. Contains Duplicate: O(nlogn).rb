# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/description/

# @param {Integer[]} nums
# @return {Boolean}

# Trivial solution using built-in sorting in O(nlogn):
def contains_duplicate(nums)
    nums.sort!

    for i in 0...nums.length
        return true if nums[i] == nums[i + 1]
    end
    
    false
end
