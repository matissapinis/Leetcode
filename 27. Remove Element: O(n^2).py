# 27. Remove Element
# https://leetcode.com/problems/remove-element/description/?envType=study-plan-v2&envId=top-interview-150

# O(n^2) algorithm for removing element instances then returning size of remaining array:
class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        # As long as value in array, keep removing its instances:
        while val in nums:
            nums.remove(val)
        
        # Return k as the length of remaining array after removals:
        return len(nums)
