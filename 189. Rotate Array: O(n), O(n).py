# 189. Rotate Array
# https://leetcode.com/problems/rotate-array/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for rotating array clockwise by k using O(n) extra space:
class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """

        # Create a new array for storing elements according to rotation mapping:
        n = len(nums)
        rotated_nums = [0] * n

        # Original array elements are mapped with index shifted by k, modulo the length of the array:
        for i in range(n):
            rotated_nums[(i + k) % n] = nums[i]
        
        # Loophole to modify `nums` array instead of just returning `rotated_nums`:
        for i in range(n):
            nums[i] = rotated_nums[i]
