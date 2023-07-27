# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/description/

# @param {Integer[]} nums
# @return {Boolean}

# Build a hashmap of each number count in O(n):
def contains_duplicate(nums)
    map = {}

    nums.each do |num|
        # If number is in dictionary then it appears twice:
        return true if map.key?(num)

        # Increase number count by one (make map if doesn't exist):
        map[num] = map.fetch(num, 0) + 1
    end
    
    false
end
