# 27. Remove Element
# https://leetcode.com/problems/remove-element/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}

# O(n^2) algorithm for removing element instances then returning size of remaining array:
def remove_element(nums, val)
    # As long as value in array, keep removing its instances:
    while nums.include?(val)
        nums.delete(val)
    end
    
    # Return k as the length of remaining array after removals:
    return nums.length
end
