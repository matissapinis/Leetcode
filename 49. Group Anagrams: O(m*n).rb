# 49. Group Anagrams
# https://leetcode.com/problems/group-anagrams/description/

# @param {String[]} strs
# @return {String[][]}

# O(m*n) algorithm for grouping anagrams using hashmaps (m – number of words, n – word max length):
def group_anagrams(strs)
    map = {}

    strs.each do |s|
        # Counter for each letter from "a" to "z":
        count = Array.new(26, 0)

        # Increase the count for each letter:
        s.each_char do |c|
            count[c.ord - 'a'.ord] += 1
        end

        # Add string as value with key of letter count mapping:
        map[count] ||= []
        map[count] << s
    end

    # Returns the group of anagrams as array of all hashmap values:
    map.values
end
