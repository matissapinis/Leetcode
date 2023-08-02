# 22. Generate Parentheses
# https://leetcode.com/problems/generate-parentheses/description/

# @param {String} s
# @return {Boolean}

# O(n) algorithm for checking balanced parentheses using stack (from 20. Valid Parentheses):
def valid_parentheses(s)
    # Initialize an empty stack:
    stack = []
    
    # Iterate through all brackets in string::
    s.each_char do |char|
        # When opening bracket is found, push it into stack:
        if ['('].include? char
            stack.push char
        # When closing bracket is found, compare it to opening bracket from stack:
        else
            # If there is no opening bracket to match, return false:
            return false if stack.empty?
        
            # If opening and closing brackets mismatch, return false:
            top = stack.pop
            return false if char == ')' && top != '('
        end
    end
    
    # If brackets didn't mismatch and no unclosed brackets left (stack is empty), return true:
    stack.empty?
end

# @param {Integer} n
# @return {String[]}

# Brute force O(2^(2n)) algorithm for generating well-formed parentheses from all strings:
def generate_parenthesis(n)
    # Initialize queue that will hold all possible strings length 1 to 2n:
    queue = ['']
    valid_strings = []

    while !queue.empty?
        # Dequeue an item from queue (dequeues all strings after length greater than 2n):
        s = queue.shift
        
        # If the length of s is 2n and is valid parenthesis, add to result:
        if s.length == 2 * n && valid_parentheses(s)
            valid_strings.append(s)
        # If the length of s is less than 2n, append '(' and ')' to s and enqueue:
        elsif s.length < 2 * n
            queue.push(s + '(')
            queue.push(s + ')')
        end
    end

    return valid_strings
end
