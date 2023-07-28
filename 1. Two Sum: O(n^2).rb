# 1. Two Sum
# https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# Brute force O(n^2) algorithm to return two indices that sum up to target:
def two_sum(nums, target)
    # Iterate through pairs of numbers (if equal skip, else check if sums to target):
    for i in 0...nums.length do
        for j in 0...nums.length do
            next if i == j
            return [i, j] if nums[i] + nums[j] == target
        end
    end
end
