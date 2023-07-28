# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/description/

# @param {String} s
# @return {Boolean}

# O(n) algorithm to check if string is palindromic:
def is_palindrome(s)
    # Convert string to lowercase alphanumeric characters only:
    s = s.downcase
    s = s.gsub(/[^a-z0-9]/, '')

    # Check if all i-th and i-th-to-last characters are equal:
    for i in 0...(s.length / 2)
        return false if s[i] != s[s.length - i - 1]
    end

    # Return true if no such characters were not equal:
    true
end
