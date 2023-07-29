# 15. 3Sum
# https://leetcode.com/problems/3sum/description/

# @param {Integer[]} nums
# @return {Integer[][]}

# O(n^2) algorithm for unique triples that sum to 0 using sorting and two indices:
def three_sum(nums)
    # Define array of triples that will output answer:
    result = []

    # Sort number array in O(nlogn):
    nums.sort!

    # Iterate over each sorted number and next pairs – in two nested loops as O(n^2):
    nums.each_with_index do |num, i|
        # Skip next equal adjacent number to avoid duplicates:
        next if num == nums[i - 1] && i > 0

        # Initialize indices for going through remaining numbers after num from each side: 
        l, r = i + 1, nums.length - 1
        
        # Go through the number array until indices meet in the middle: 
        while l < r
            # Save candidate threesum for nums[i]:
            three_sum = num + nums[l] + nums[r]

            # If three-sum is smaller than zero, try next left number larger:
            if three_sum < 0
                l += 1
            # If three-sum is larger than zero, try next right number smaller:
            elsif three_sum > 0
                r -= 1
            else
                # If three-sum to zero is found, add to answer list: 
                result << [num, nums[l], nums[r]]
                
                # With left index go to the next number:
                l += 1
                # If next numbers are duplicate skip further (up to right index):
                l += 1 while nums[l] == nums[l - 1] && l < r
            end
        end
    end

    # Return the list of unique three-sum to zero triples (empty if none):
    result
end
