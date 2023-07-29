# 15. 3Sum
# https://leetcode.com/problems/3sum/description/

# O(n^2) algorithm for unique triples that sum to 0 using sorting and two indices:
class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]: 
        # Define array of triples that will output answer:
        result = []

        # Sort number array in O(nlogn):
        nums.sort()

        # Iterate over each sorted number and next pairs – in two nested loops as O(n^2):
        for i in range(len(nums)):
            # Skip next equal adjacent number to avoid duplicates:
            if nums[i] == nums[i - 1] and i > 0:
                continue

            # Initialize indices for going through remaining numbers after nums[i] from each side: 
            L, R = i + 1, len(nums) - 1
            
            # Go through the number array until indices meet in the middle: 
            while L < R:
                # Save candidate threesum for nums[i]:
                three_sum = nums[i] + nums[L] + nums[R]

                # If three-sum is smaller than zero, try next left number larger:
                if three_sum < 0:
                    L += 1
                # If three-sum is larger than zero, try next right number smaller:
                elif three_sum > 0:
                    R -= 1
                else:
                    # If three-sum to zero is found, add to answer list: 
                    result.append([nums[i], nums[L], nums[R]])
                    
                    # With left index go to the next number:
                    L += 1
                    # If next numbers are duplicate skip further (up to right index):
                    while nums[L] == nums[L - 1] and L < R:
                        L += 1
            
        # Return the list of unique three-sum to zero triples (empty if none):
        return result
