# 167. Two Sum II - Input Array Is Sorted
# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# Same solution as 1. Two Sum, only index is incremented:
def two_sum(numbers, target)
    # Initialize empty hashmap to store each number as key with value as index plus one of that number:
    map = {}

    # Iterate through each element in the list, along with its index:
    numbers.each_with_index do |num, i|
        # If two numbers add up to target, one number is the complement of the other (target minus number):
        complement = target - num

        # Check if complement is in dictionary (if yes, we have found two numbers that add up to target):
        if map.key?(complement)
            # Return indices of the two numbers ('map[complement]' – complement index, 'i + 1' – current number):
            return [map[complement], i + 1]
        end

        # If complement is not in dictionary, add current number and its index (added by one):
        map[num] = i + 1
    end

    # If no two numbers add up to target, return empty list:
    []
end
