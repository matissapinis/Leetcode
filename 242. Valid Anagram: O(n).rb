# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if s.length != t.length

    # Build a hashmap of each character in string, then compare hashmaps in O(s + t):
    count_s, count_t = {}, {}
    for i in 0...s.length
        # Increment character counter by one (with 'fetch' method if map doesn't exist):
        count_s[s[i]] = count_s.fetch(s[i], 0) + 1
        count_t[t[i]] = count_t.fetch(t[i], 0) + 1
    end

    count_s.each do |c, _|
        return false if count_s[c] != count_t.fetch(c, 0)
    end

    true
end
