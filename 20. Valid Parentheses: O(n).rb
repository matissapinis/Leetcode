# 20. Valid Parentheses
# https://leetcode.com/problems/valid-parentheses/description/

# @param {String} s
# @return {Boolean}

# O(n) algorithm for checking balanced parentheses using stack:
def is_valid(s)
    # Initialize an empty stack:
    stack = []
    
    # Iterate through all brackets in string::
    s.each_char do |char|
        # When opening bracket is found, push it into stack:
        if ['(', '{', '['].include? char
            stack.push char
        # When closing bracket is found, compare it to opening bracket from stack:
        else
            # If there is no opening bracket to match, return false:
            return false if stack.empty?
        
            # If opening and closing brackets mismatch, return false:
            top = stack.pop
            if (char == ')' && top != '(') || 
               (char == '}' && top != '{') || 
               (char == ']' && top != '[')
                return false
            end
        end
    end
    
    # If brackets didn't mismatch and no unclosed brackets left (stack is empty), return true:
    stack.empty?
end
