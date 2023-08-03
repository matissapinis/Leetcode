# 9. Palindrome Number
# https://leetcode.com/problems/palindrome-number/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer} x
# @return {Boolean}

# O(n) algorithm to check if number is palindromic (cf. 125. Valid Palindrome):
def is_palindrome(x)
    # Convert number to string:
    x = x.to_s

    # Check if all i-th and i-th-to-last characters are equal:
    for i in 0...(x.length / 2)
        return false if x[i] != x[x.length - i - 1]
    end

    # Return true if no such characters were not equal:
    true
end
