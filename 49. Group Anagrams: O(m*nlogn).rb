# 49. Group Anagrams
# https://leetcode.com/problems/group-anagrams/description/

# @param {String[]} strs
# @return {String[][]}

# Trivial O(m*nlogn) algorithm for grouping anagrams using built-in sorting and hashmap (m – number of words, n – word max length):
=begin
1. Create a hashmap with key as sorted string.
2. Add words to hashmap if word is in hashmap.
=end
def group_anagrams(strs)
    map = {}

    strs.each do |str|
        # Sort each string alphabetically in O(nlogn):
        sorted_string = str.chars.sort.join

        # Append item to array at sorted string key (creates empty array if map doesn't exist):
        map[sorted_string] ||= []
        map[sorted_string] << str
    end

    # Return the group of anagrams as array of all hashmap values:
    map.values
end
