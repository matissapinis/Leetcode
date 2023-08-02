# 739. Daily Temperatures
# https://leetcode.com/problems/daily-temperatures/description/

# O(n) algorithm for index distance when element has greater next element in array using stack:
class Solution:
    def dailyTemperatures(self, temperatures: List[int]) -> List[int]:
        # Initialize default answer array (answer[i] is zero when has no greater next element):
        answer = [0] * len(temperatures)
        
        # Initialize an empty stack which will hold pairs of element value and index:
        stack = []

        # Iterate through list of elements, checking each pair:
        for i, temperature in enumerate(temperatures):
            # When next element is greater than top of stack, save index distance:
            while stack and temperature > stack[-1][0]:
                stack_temperature, stack_index = stack.pop()
                answer[stack_index] = i - stack_index
            
            # Add current element value and index to stack:
            stack.append([temperature, i])

        # Return list of index distances when each element has greater next element:
        return answer
