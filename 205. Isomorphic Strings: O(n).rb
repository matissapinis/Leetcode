# 205. Isomorphic Strings
# https://leetcode.com/problems/isomorphic-strings/description/?envType=study-plan-v2&envId=top-interview-150

# @param {String} s
# @param {String} t
# @return {Boolean}

# O(n) algorithm for checking if two strings are isomorphic (cf. 290. Word Pattern):
def is_isomorphic(s, t)
    indices_s, indices_t = Hash.new { |h, k| h[k] = [] }, Hash.new { |h, k| h[k] = [] }

    # Create hashmaps with character as key and its position array as value:
    s.chars.each_with_index do |ch, i|
        indices_s[ch] << i
    end

    t.chars.each_with_index do |ch, i|
        indices_t[ch] << i
    end

    # No isomorphism if letter count in strings is not equivalent:
    return false if indices_s.values.length != indices_t.values.length

    # Iterate and compare values of the two hashmaps – return false if isomorphism ruined:
    indices_s.values.zip(indices_t.values).each do |value_s, value_t|
        return false if value_s != value_t
    end

    # Return true if the character position lists match:
    true
end
