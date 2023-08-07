# 283. Move Zeroes
# https://leetcode.com/problems/move-zeroes/description/?envType=study-plan-v2&envId=leetcode-75

# O(n) algorithm for moving zeros to the end while maintaining relative order:
class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """

        # Initialize left and right index for going through array:
        l, r = 0, 1

        # Iterate through array right-to-left:
        while l < len(nums) and r < len(nums):
            # If left and right element are both zeros, keep going right:
            if nums[l] == 0 and nums[r] == 0:
                r += 1
            # If left is zero and right is not, swap places and move left right:
            elif nums[l] == 0 and nums[r] != 0:
                nums[l], nums[r] = nums[r], nums[l]
                l += 1
            # If left is non-zero, keep moving further until found:
            else:
                l += 1
                r += 1
