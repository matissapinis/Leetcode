# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/description/

class Solution:
    def isPalindrome(self, s: str) -> bool:
        # Convert string to lowercase alphanumeric characters only:
        s = s.lower()
        s = re.sub(r'[\W_]', '', s)

        # Check if all i-th and i-th-to-last characters are equal:
        for i in range(len(s) // 2):
            if s[i] != s[len(s) - i - 1]:
                return False

        return True
