# 22. Generate Parentheses
# https://leetcode.com/problems/generate-parentheses/description/

# Brute force O(2^(2n) * n) algorithm for generating well-formed parentheses from all strings:
class Solution:
    def generateParenthesis(self, n: int) -> List[str]:
        # Initialize queue that will hold all possible strings length 1 to 2n:
        queue = ['']
        valid_strings = []

        # O(n) algorithm for checking balanced parentheses using stack (from 20. Valid Parentheses):
        def valid_parentheses(s):
            # Initialize an empty stack:
            stack = []

            # Iterate through all brackets in string:
            for char in s:
                # When opening bracket is found, push it into stack:
                if char in ["("]:
                    stack.append(char)
                # When closing bracket is found, compare it to opening bracket from stack:
                else:
                    # If there is no opening bracket to match, return false:
                    if not stack:
                        return False
                    
                    # If opening and closing brackets mismatch, return false:
                    top = stack.pop()
                    if char == ')' and top != '(':
                        return False

            # If brackets didn't mismatch and no unclosed brackets left (stack is empty), return true:
            return not stack

        while queue:
            # Dequeue an item from queue (dequeues all strings after length greater than 2n):
            s = queue.pop(0)
            
            # If the length of s is 2n and is valid parenthesis, add to result:
            if len(s) == 2 * n and valid_parentheses(s):
                valid_strings.append(s)
            # If the length of s is less than 2n, append '(' and ')' to s and enqueue:
            elif len(s) < 2 * n:
                queue.append(s + '(')
                queue.append(s + ')')

        return valid_strings
