# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/description/

# O(n) algorithm to check if string is palindromic:
class Solution:
    def isPalindrome(self, s: str) -> bool:
        # Convert string to lowercase alphanumeric characters only:
        s = s.lower()
        s = re.sub(r'[\W_]', '', s)

        # Check if all i-th and i-th-to-last characters are equal:
        for i in range(len(s) // 2):
            if s[i] != s[len(s) - i - 1]:
                return False
        
        # Return true if no such characters were not equal:
        return True
