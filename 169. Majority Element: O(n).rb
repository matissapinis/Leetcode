# 169. Majority Element
# https://leetcode.com/problems/majority-element/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {Integer}

# O(n) algorithm for majority element in array using built-in max on hashmap:
def majority_element(nums)
    map = {}

    # Creates a hashmap how many instances each number has:
    nums.each do |num|
        map[num] ||= 0
        map[num] += 1
    end

    # Gets the key with the largest value from the map:
    max_element = map.max_by{|k, v| v}[0]

    # Returns the majority element with largest count:
    max_element
end
