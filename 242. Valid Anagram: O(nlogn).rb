# 242. Valid Anagram
# https://leetcode.com/problems/valid-anagram/description/

# @param {String} s
# @param {String} t
# @return {Boolean}

# Trivial solution using built-in sorting O(s log s + t log t):
def is_anagram(s, t)
    s_sorted = s.chars.sort.join
    t_sorted = t.chars.sort.join
    s_sorted == t_sorted
end
