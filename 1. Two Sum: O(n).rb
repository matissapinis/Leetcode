# 1. Two Sum
# https://leetcode.com/problems/two-sum/description/
    
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# O(n) algorithm for indices of two elements summing to target using hashmap:
def two_sum(nums, target)
    # Initialize empty hashmap to store each number as key with value as index of that number:
    map = {}

    # Iterate through each element in the list, along with its index:
    nums.each_with_index do |num, i|
        # If two numbers add up to target, one number is the complement of the other (target minus number):
        complement = target - num

        # Check if complement is in dictionary (if yes, we have found two numbers that add up to target):
        if map.key?(complement)
            # Return indices of the two numbers ('map[complement]' – complement index, 'i + 1' – current number index):
            return [map[complement], i]
        end

        # If complement is not in dictionary, add current number and its index (added by one):
        map[num] = i
    end

    # If no two numbers add up to target, return empty list:
    []
end
