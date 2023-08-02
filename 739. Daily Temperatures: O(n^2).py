# 739. Daily Temperatures
# https://leetcode.com/problems/daily-temperatures/description/

# Brute force O(n^2) algorithm for index distance when element has greater next element in array (exceeds time limit):
class Solution:
    def dailyTemperatures(self, temperatures: List[int]) -> List[int]:
        # Initialize default answer array (answer[i] is zero when has no greater next element):
        answer = [0] * len(temperatures)

        # Iterate through list of elements, checking each pair:
        for i in range(len(temperatures)):
            for j in range(i, len(temperatures)):
                # When next element is greater, save index distance and start checking successor:
                if temperatures[i] < temperatures[j]:
                    answer[i] = j - i
                    break

        # Return list of index distances when each element has greater next element:
        return answer
