# 643. Maximum Average Subarray I
# https://leetcode.com/problems/maximum-average-subarray-i/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}

# Brute force O(n^2) algorithm for maximum average value of contiguous k-subarrays (exceeds time limit):
def find_max_average(nums, k)
    # Initialize maximum average as smallest possible value:
    max_average = -1.0/0

    # Iterate through all contiguous subarrays by slicing:
    for i in 0..(nums.length - k)
        # Take average as sum divided by count:
        current_average = nums[i, k].sum.to_f / k

        # Update maximum average if new average is greatest:
        max_average = [max_average, current_average].max
    end

    # Return the maximum average value of all contiguous subarrays:
    max_average
end
