# 155. Min Stack
# https://leetcode.com/problems/min-stack/description/

# Stack for push, pop, top and minimum element in O(1) time:
class MinStack:
    def __init__(self):
        # One array for tracking stack and other for minimum value at each step:
        self.stack = []
        self.min_stack = []

    def push(self, val: int) -> None:
        # Push value into stack:
        self.stack.append(val)

        # Push value into minimum stack or its top if minimum didn't change:
        val = min(val, self.min_stack[-1] if self.min_stack else val)
        self.min_stack.append(val)

    def pop(self) -> None:
        # Remove top element from both stacks:
        self.stack.pop()
        self.min_stack.pop()

    def top(self) -> int:
        # Return top element of stack:
        return self.stack[-1]

    def getMin(self) -> int:
        # Return minimum element from minimum stack:
        return self.min_stack[-1]

# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
