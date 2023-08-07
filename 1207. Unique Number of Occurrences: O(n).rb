# 1207. Unique Number of Occurrences
# https://leetcode.com/problems/unique-number-of-occurrences/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} arr
# @return {Boolean}

# O(n) algorithm for whether number of occurences is unique for each array element:
def unique_occurrences(arr)
    counts, metacounts = {}, {}

    # Create a hashmap for number of occurrences for each element:
    arr.each do |num|
        counts[num] = counts.fetch(num, 0) + 1
    end

    # Create a hashmap with occurrence count as key and which element has this count as value:
    counts.each do |key, value|
        metacounts[value] = (metacounts.fetch(value, []) << key)
    end

    # If several elements have the same occurrence rate, return false:
    metacounts.each_value do |value|
        return false if value.length > 1
    end

    # If all elements have difference occurrence rates, return true:
    true
end
