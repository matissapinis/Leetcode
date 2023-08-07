# 643. Maximum Average Subarray I
# https://leetcode.com/problems/maximum-average-subarray-i/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}

# O(n) algorithm for maximum average value of contiguous k-subarrays:
def find_max_average(nums, k)
    # Initialize current and max average as average of first contiguous subarray size k:
    current_average = nums[0, k].sum.to_f / k
    max_average = current_average

    # Iterate through array with sliding window of subarrays after the first one:
    for i in k...nums.length
        # Subtract the leftmost and add the rightmost value to sum when calculating new average:
        current_average = (current_average * k - nums[i - k] + nums[i]) / k

        # Update maximum average if new average is greatest:
        max_average = [max_average, current_average].max
    end

    # Return the maximum average value of all contiguous subarrays:
    max_average
end
