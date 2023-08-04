# 26. Remove Duplicates from Sorted Array
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for number and in-place array of unique elements in sorted array:
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        # Initialize left and right index for going through array:
        l, r = 0, 1

        # Array has at least one unique element (according to constraints):
        k = 1

        # Iterate through array right-to-left:
        while l < len(nums) and r < len(nums):
            # If right element is duplicate of left, keep going right:
            if nums[l] == nums[r]:
                r += 1
            # If different, save left-next spot, increase unique count and move left:
            else:
                nums[l + 1] = nums[r]
                k += 1
                l += 1
        
        # Return the number of unique elements:
        return k

