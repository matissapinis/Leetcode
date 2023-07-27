# 128. Longest Consecutive Sequence
# https://leetcode.com/problems/longest-consecutive-sequence/description/

# @param {Integer[]} nums
# @return {Integer}

# 1. Sort the number list.
# 2. Iterate of sorted number list, saving max consecutive sequence length.
# 3. If current consecutive sequence ends, start a new one.
def longest_consecutive(nums)
    nums.sort!

    return 0 if nums.empty?

    max_length = 1
    current_length = 1

    for i in 0...(nums.length - 1)
        if nums[i + 1] == nums[i] + 1
            current_length += 1
            max_length = [max_length, current_length].max
        elsif nums[i + 1] == nums[i]
            next
        else
            current_length = 1
        end
    end

    max_length
end
