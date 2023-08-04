# 228. Summary Ranges
# https://leetcode.com/problems/summary-ranges/description?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @return {String[]}

# O(n) algorithm for smallest sorted list of ranges that exactly cover numbers in array:
def summary_ranges(nums)
    range_list = []

    # Handle edge case where number array is empty:
    return range_list if nums.empty?

    # Initialize temporary array in which store to all numbers in range:
    range_array = []

    # Save the last number of the last range to handle edge case:
    last_number = nil

    # Iterate through numbers in number array:
    i = 0
    while i < nums.length - 1
        # Add first number of range to temporary array: 
        range_array << nums[i]

        # Add all adjacent incremented numbers to array as well:
        while i < nums.length - 1 && nums[i] + 1 == nums[i + 1]
            range_array << nums[i + 1]
            i += 1
        end

        # If current range has only one number, add only that number:
        if range_array.length == 1
            range_list << range_array[0].to_s
        # If current range has more, take first and last number of range:
        else
            range_list << range_array[0].to_s + "->" + range_array[-1].to_s

            # Save this to handle the edge case with last element:
            last_number = range_array[-1]
        end
        
        # Start new temporary array for next range and keep iterating:
        range_array = []
        i += 1
    end

    # Handle edge case where last element has only range of itself:
    if last_number != nums[-1]
        range_list << nums[-1].to_s
    end

    # Return list of all ranges that cover all numbers in number array:
    range_list
end
