# 27. Remove Element
# https://leetcode.com/problems/remove-element/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for removing element instances then returning size of remaining array:
class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        # Initialize left and right index for going through array from each side:
        l, r = 0, len(nums) - 1
        
        k = len(nums)
        
        # Left index tracks value elements, right index – non-value (until meet in middle):
        while l <= r:
            if nums[l] == val and nums[r] != val:
                # Swap right non-value element in place of left value element:
                nums[l] = nums[r]
                nums[r] = '_'

                # Each replacement with underscore reduces remaining array size:
                k -= 1

                # After swap and replacement, move right index to the left:
                r -= 1
            
            # If left element is non-value, move left index to the right:
            if nums[l] != val:
                l += 1
            
            # If right element is value, replace and decrement size tracker:
            if nums[r] == val:
                nums[r] = '_'
                k -= 1
                r -= 1
        
        # Return k as the length of remaining array after all those replacements:
        return k
