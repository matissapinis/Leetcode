# 22. Generate Parentheses
# https://leetcode.com/problems/generate-parentheses/description/

# @param {Integer} n
# @return {String[]}

# O(2^(2n) / sqrt(n)) algorithm for generating well-formed parentheses using backtracking:
def generate_parenthesis(n)
    # Initialize an empty stack and result' array:
    stack = []
    valid_parentheses = []

    # Do backtracking DFS while abandoning non-well-formed parentheses:
    def backtrack(open_count, closed_count, stack, valid_parentheses, n)
        # Save if number of "(" and ")" match pair count (and are in sequence):
        if open_count == closed_count && open_count == n
            valid_parentheses.push(stack.join)
        end
        
        # Only add "(" to string if pair count not exhausted:
        if open_count < n
            stack.push("(")
            backtrack(open_count + 1, closed_count, stack, valid_parentheses, n)
            stack.pop()
        end
        
        # Only add ")" to string if there are "(" to close properly:
        if closed_count < open_count
            stack.push(")")
            backtrack(open_count, closed_count + 1, stack, valid_parentheses, n)
            stack.pop()
        end
    end
    
    # Recursively DFS from empty string until well-formed parentheses length 2n:
    backtrack(0, 0, stack, valid_parentheses, n)

    # Return list of well-formed parentheses with n number of "(" and ")":
    return valid_parentheses
end
