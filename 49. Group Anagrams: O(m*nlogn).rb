# 49. Group Anagrams
# https://leetcode.com/problems/group-anagrams/description/

# @param {String[]} strs
# @return {String[][]}

# 1. Create a hashmap with key as sorted string.
# 2. Add words to hashmap if word is in hashmap.
def group_anagrams(strs)
    map = {}

    strs.each do |str|
        sorted_string = str.chars.sort.join

        # Appends item to array at sorted string key (creates empty array if map doesn't exist):
        map[sorted_string] ||= []
        map[sorted_string] << str
    end

    # Returns the group of anagrams as array of all hashmap values:
    map.values
end
