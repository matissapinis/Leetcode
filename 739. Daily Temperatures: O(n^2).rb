# 739. Daily Temperatures
# https://leetcode.com/problems/daily-temperatures/description/

# @param {Integer[]} temperatures
# @return {Integer[]}

# Brute force O(n^2) algorithm for index distance when element has greater next element in array (exceeds time limit):
def daily_temperatures(temperatures)
    # Initialize default answer array (answer[i] is zero when has no greater next element):
    answer = Array.new(temperatures.length, 0)

    # Iterate through list of elements, checking each pair:
    for i in 0...temperatures.length
        for j in i...temperatures.length
            # When next element is greater, save index distance and start checking successor:
            if temperatures[i] < temperatures[j]
                answer[i] = j - i
                break
            end
        end
    end

    # Return list of index distances when each element has greater next element:
    answer
end
