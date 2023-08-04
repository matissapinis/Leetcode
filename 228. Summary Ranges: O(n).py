# 228. Summary Ranges
# https://leetcode.com/problems/summary-ranges/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for smallest sorted list of ranges that exactly cover numbers in array:
class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        range_list = []

        # Handle edge case where number array is empty:
        if len(nums) == 0:
            return range_list

        # Initialize temporary array in which store to all numbers in range:
        range_array = []

        # Save the last number of the last range to handle edge case:
        last_number = None

        # Iterate through numbers in number array:
        i = 0
        while i < len(nums) - 1:
            # Add first number of range to temporary array: 
            range_array.append(nums[i])

            # Add all adjacent incremented numbers to array as well:
            while i < len(nums) - 1 and nums[i] + 1 == nums[i + 1]:
                range_array.append(nums[i + 1])
                i += 1

            # If current range has only one number, add only that number:
            if len(range_array) == 1:
                range_list.append(str(range_array[0]))
            # If current range has more, take first and last number of range:
            else:
                range_list.append(str(range_array[0]) + "->" + str(range_array[-1]))

                # Save this to handle the edge case with last element:
                last_number = range_array[-1]
            
            # Start new temporary array for next range and keep iterating:
            range_array = []
            i += 1
        
        # Handle edge case where last element has only range of itself:
        if last_number != nums[-1]:
            range_list.append(str(nums[-1]))

        # Return list of all ranges that cover all numbers in number array:
        return range_list
