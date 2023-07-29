# 189. Rotate Array
# https://leetcode.com/problems/rotate-array/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.

# O(n) algorithm for rotating array clockwise by k using O(n) extra space:
def rotate(nums, k)
    # Create a new array for storing elements according to rotation mapping:
    n = nums.length
    rotated_nums = Array.new(n)

    # Original array elements are mapped with index shifted by k, modulo the length of the array:
    for i in 0...n
        rotated_nums[(i + k) % n] = nums[i]
    end
    
    # Loophole to modify `nums` array instead of just returning `rotated_nums`:
    for i in 0...n
        nums[i] = rotated_nums[i]
    end
end
