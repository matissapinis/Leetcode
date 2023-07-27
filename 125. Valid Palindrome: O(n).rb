# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/description/

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    # Convert string to lowercase alphanumeric characters only:
    s = s.downcase
    s = s.gsub(/[^a-z0-9]/, '')

    # Check if all i-th and i-th-to-last characters are equal:
    for i in 0...(s.length / 2)
        return false if s[i] != s[s.length - i - 1]
    end

    true
end
