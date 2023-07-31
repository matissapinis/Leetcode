# 20. Valid Parentheses
# https://leetcode.com/problems/valid-parentheses/description/

# O(n) algorithm for checking balanced parentheses using stack:
class Solution:
    def isValid(self, s: str) -> bool:
        # Initialize an empty stack:
        stack = []

        # Iterate through all brackets in string:
        for char in s:
            # When opening bracket is found, push it into stack:
            if char in ["(", "{", "["]:
                stack.append(char)
            # When closing bracket is found, compare it to opening bracket from stack:
            else:
                # If there is no opening bracket to match, return false:
                if not stack:
                    return False
                
                # If opening and closing brackets mismatch, return false:
                top = stack.pop()
                if char == ')' and top != '(' or \
                   char == '}' and top != '{' or \
                   char == ']' and top != '[':
                    return False

        # If brackets didn't mismatch and no unclosed brackets left (stack is empty), return true:
        return not stack
