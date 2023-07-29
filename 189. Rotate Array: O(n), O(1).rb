# 189. Rotate Array
# https://leetcode.com/problems/rotate-array/description/?envType=study-plan-v2&envId=top-interview-150

# Euclid's greatest common divisor algorithm:
def gcd(a, b)
    while b != 0 do
        a, b = b, a % b
    end
    return a
end

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.

# O(n) algorithm for rotating array clockwise by k using O(n) extra space:
def rotate(nums, k)
    n = nums.length

    # Number of cycles that group elements moving to each other's position during rotation, e.g.:
    num_cycles = gcd(n, k)
    # gcd(6, 2) = 2 cycles: Indices 0->2->4->0 and 1->3->5->1 => Elements [1,2,3,4,5,6]->[5,6,1,2,3,4]
    # gcd(8, 3) = 1 cycle:  Indices 0->3->6->1->4->7->2->5->0 => Elements [1,2,3,4,5,6,7,8]->[6,7,8,1,2,3,4,5]
    
    # Start a cycle from each of the first gcd(n, k) elements:
    (0...num_cycles).each do |i|
        # Store the initial element of this cycle and its index in temporary variables:
        tmp = nums[i]
        j = i

        while true do
            # Calculate target index by current index shifted by k, modulo the length of the array:
            idx = (j + k) % n
            
            # Swap element at current index with held element to rotated position:
            nums[idx], tmp = tmp, nums[idx]
            
            # Stop if cycle index is back to initial index (one full cycle completed, don't cycle indefinitely):
            break if idx == i
            
            # Move on to the next position in the cycle:
            j = idx
        end
    end
end
