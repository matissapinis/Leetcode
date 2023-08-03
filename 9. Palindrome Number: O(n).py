# 9. Palindrome Number
# https://leetcode.com/problems/palindrome-number/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm to check if number is palindromic (cf. 125. Valid Palindrome):
class Solution:
    def isPalindrome(self, x: int) -> bool:
        # Convert number to string:
        x = str(x)

        # Check if all i-th and i-th-to-last characters are equal:
        for i in range(len(x) // 2):
            if x[i] != x[len(x) - i - 1]:
                return False
        
        # Return true if no such characters were not equal:
        return True
