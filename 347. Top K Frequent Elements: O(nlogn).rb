# 347. Top K Frequent Elements
# https://leetcode.com/problems/top-k-frequent-elements/description/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    map = {}

    # Creates a hashmap how many instances each number has:
    nums.each do |num|
        map[num] ||= 0
        map[num] += 1
    end

    # Sorts key-value pairs by values (biggest to lowest) and returns array of k largest values:
    sorted_items = map.sort_by { |key, value| -value }[0...k]

    # Returns array of keys from these top k key-value pairs:
    keys = sorted_items.map { |item| item[0] }
    
    keys
end
