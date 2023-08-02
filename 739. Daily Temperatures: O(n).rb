# 739. Daily Temperatures
# https://leetcode.com/problems/daily-temperatures/description/

# @param {Integer[]} temperatures
# @return {Integer[]}

# O(n) algorithm for index distance when element has greater next element in array using stack:
def daily_temperatures(temperatures)
    # Initialize default answer array (answer[i] is zero when has no greater next element):
    answer = Array.new(temperatures.length, 0)
    
    # Initialize an empty stack which will hold pairs of element value and index:
    stack = []

    # Iterate through list of elements, checking each pair:
    temperatures.each_with_index do |temperature, i|
        # When next element is greater than top of stack, save index distance:
        while !stack.empty? and temperature > stack.last[0]
            stack_temperature, stack_index = stack.pop
            answer[stack_index] = i - stack_index
        end

        # Add current element value and index to stack:
        stack.push([temperature, i])
    end

    # Return list of index distances when each element has greater next element:
    answer
end
