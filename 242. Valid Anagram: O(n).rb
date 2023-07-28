# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

# @param {String} s
# @param {String} t
# @return {Boolean}

# O(n) algorithm if string has anagram using hashmaps:
def is_anagram(s, t)
    # Cannot be anagram if lengths of strings are different:
    return false if s.length != t.length

    # Build a hashmap of each character in string, then compare hashmaps in O(|s|):
    count_s, count_t = {}, {}
    for i in 0...s.length
        # Increment character counter by one (with 'fetch' method if map doesn't exist):
        count_s[s[i]] = count_s.fetch(s[i], 0) + 1
        count_t[t[i]] = count_t.fetch(t[i], 0) + 1
    end

    # Not an anagram if character counts aren't equal between strings:
    count_s.each do |c, _|
        return false if count_s[c] != count_t.fetch(c, 0)
    end

    # Is an anagram if no character counts were different:
    true
end
