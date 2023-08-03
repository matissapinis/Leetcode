# 290. Word Pattern
# https://leetcode.com/problems/word-pattern/description/?envType=study-plan-v2&envId=top-interview-150

# @param {String} pattern
# @param {String} s
# @return {Boolean}

# O(n) algorithm for checking bijective pattern between string of characters and string of words:
=begin
    1. For `pattern` assign each character an index.
    2. For `s` assign each word an index.
    3. Check if the values for both maps are equal.
=end
def word_pattern(pattern, s)
    indices_pattern = Hash.new {|h, k| h[k] = []}
    indices_s = Hash.new {|h, k| h[k] = []}

    # Create a hashmap with character as key and its position array as value:
    pattern.split("").each_with_index do |char, index|
        indices_pattern[char] << index
    end

    # Create a hashmap with word as key and its order number as value:
    words = s.split(" ")
    words.each_with_index do |word, index|
        indices_s[word] << index
    end

    # No bijection if size of sets is not the same:
    return false if indices_pattern.values.length != indices_s.values.length

    # Iterate and compare values of the two hashmaps – return false if bijection ruined:
    indices_pattern.values.zip(indices_s.values).each do |value_pattern, value_s|
        return false if value_pattern != value_s
    end

    # Return true if the character position list matches word position list:
    true
end
