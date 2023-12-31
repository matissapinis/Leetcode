# 167. Two Sum II - Input Array Is Sorted
# https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/

# O(n) algorithm with O(1) space for two-sum using two indices:
class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        # Initialize left and right index for going through array from each side:
        l, r = 0, len(numbers) - 1

        # Go through the sorted array until indices meet in the middle:
        while l < r:
            # Sum the smaller left number with larger right number:
            current_sum = numbers[l] + numbers[r]

            # If two-sum is smaller than target, try next left number larger:
            if current_sum < target:
                l += 1
            # If two-sum is larger than target, try next right number smaller:
            elif current_sum > target:
                r -= 1
            # If target two-sum found, return number indices (incremented by one):
            else:
                return [l + 1, r + 1]

        # If no two numbers add up to target, return empty list:
        return []
