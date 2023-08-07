# 283. Move Zeroes
# https://leetcode.com/problems/move-zeroes/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.

# O(n) algorithm for moving zeros to the end while maintaining relative order:
def move_zeroes(nums)
    # Initialize left and right index for going through array:
    l, r = 0, 1

    # Iterate through array right-to-left:
    while l < nums.length && r < nums.length
        # If left and right element are both zeros, keep going right:
        if nums[l] == 0 && nums[r] == 0
            r += 1
        # If left is zero and right is not, swap places and move left right:
        elsif nums[l] == 0 && nums[r] != 0
            nums[l], nums[r] = nums[r], nums[l]
            l += 1
        # If left is non-zero, keep moving further until found:
        else
            l += 1
            r += 1
        end
    end
end
