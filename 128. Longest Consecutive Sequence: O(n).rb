# 128. Longest Consecutive Sequence
# https://leetcode.com/problems/longest-consecutive-sequence/description/

# @param {Integer[]} nums
# @return {Integer}

# O(n) algorithm for length of longest consecutive sequence in array using set data structure:
def longest_consecutive(nums)
    # Convert the array to a set to enable O(1) lookups:
    nums_set = nums.to_set
    
    max_length = 0
    
    nums.each do |num|
        # If the current number is the start of a sequence, then check for the length of this sequence:
        if !nums_set.include?(num - 1)
            current_length = 0
            # Increment the length of the sequence until a number that is not in the set:
            while nums_set.include?(num + current_length)
                current_length += 1
            end

            # Change the length of longest sequence if new sequence is longest: 
            max_length = [current_length, max_length].max
        end
    end

    # Return the length of the longest consecutive sequence:
    return max_length
end
