# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

# @param {String} s
# @param {String} t
# @return {Boolean}

# Trivial algorithm if string has anagram using built-in sorting in O(s*log(s) + t*log(t)):
def is_anagram(s, t)
    # Sort each string in O(nlogn):
    s_sorted = s.chars.sort.join
    t_sorted = t.chars.sort.join

    # Is anagram if sorted strings are equal:
    s_sorted == t_sorted
end
