# 22. Generate Parentheses
# https://leetcode.com/problems/generate-parentheses/description/

# O(2^(2n) / sqrt(n)) algorithm for generating well-formed parentheses using backtracking:
class Solution:
    def generateParenthesis(self, n: int) -> List[str]:
        # Initialize an empty stack and result' list:
        stack = []
        valid_parentheses = []

        # Do backtracking DFS while abandoning non-well-formed parentheses:
        def backtrack(open_count, closed_count):
            # Save if number of "(" and ")" match pair count (and are in sequence):
            if open_count == closed_count == n:
                valid_parentheses.append("".join(stack))
            
            # Only add "(" to string if pair count not exhausted:
            if open_count < n:
                stack.append("(")
                backtrack(open_count + 1, closed_count)
                stack.pop()
            
            # Only add ")" to string if there are "(" to close properly:
            if closed_count < open_count:
                stack.append(")")
                backtrack(open_count, closed_count + 1)
                stack.pop()
        
        # Recursively DFS from empty string until well-formed parentheses length 2n:
        backtrack(0, 0)

        # Return list of well-formed parentheses with n number of "(" and ")":
        return valid_parentheses
