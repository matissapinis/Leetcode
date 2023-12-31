# 347. Top K Frequent Elements
# https://leetcode.com/problems/top-k-frequent-elements/description/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}

# O(nlogn) algorithm for k-predominant numbers in array using built-in sorting on hashmap:
def top_k_frequent(nums, k)
    map = {}

    # Creates a hashmap how many instances each number has:
    nums.each do |num|
        map[num] ||= 0
        map[num] += 1
    end

    # Sorts key-value pairs by values (largest to smallest) and returns array of k largest values:
    sorted_items = map.sort_by { |key, value| -value }[0...k]

    # Returns array of keys from these top k key-value pairs:
    keys = sorted_items.map { |item| item[0] }
    keys
end
