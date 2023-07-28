# 11. Container With Most Water
# https://leetcode.com/problems/container-with-most-water/description/

# O(n) algorithm for largest water container area in array using two indices:
class Solution:
    def maxArea(self, height: List[int]) -> int:
        # Initialize left and right index for going through array from each side:
        L, R = 0, len(height) - 1

        max_area = 0

        # Go through the array until indices meet in the middle:
        while L < R:
            # 2-D water container area is width (index difference) by height (smallest of the two):
            current_area = (R - L) * min(height[L], height[R])

            # Change the area of largest container if new container is largest:
            max_area = max(current_area, max_area)

            # Move left index left if left height is smaller:
            if height[L] < height[R]:
                L += 1
            # Move right index right otherwise: 
            else:
                R -= 1

        # Return the area of the largest water container:
        return max_area
