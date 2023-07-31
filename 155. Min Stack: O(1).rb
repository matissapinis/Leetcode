# 155. Min Stack
# https://leetcode.com/problems/min-stack/description/

# Stack for push, pop, top and minimum element in O(1) time:
class MinStack
    def initialize()
        # One array for tracking stack and other for minimum value at each step:
        @stack = []
        @min_stack = []
    end

=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        # Push value into stack:
        @stack.push(val)

        # Push value into minimum stack or its top if minimum didn't change:
        val = [val, (@min_stack.empty? ? val : @min_stack[-1])].min
        @min_stack.push(val) 
    end

=begin
    :rtype: Void
=end
    def pop()
        # Remove top element from both stacks:
        @stack.pop
        @min_stack.pop   
    end

=begin
    :rtype: Integer
=end
    def top()
        # Return top element of stack:
        @stack[-1]
    end

=begin
    :rtype: Integer
=end
    def get_min()
        # Return minimum element from minimum stack:
        @min_stack[-1]
    end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
