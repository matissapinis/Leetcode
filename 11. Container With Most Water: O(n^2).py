# 11. Container With Most Water
# https://leetcode.com/problems/container-with-most-water/description/

# Trivial O(n^2) algorithm for largest water container area in array (exceeds time limit):
class Solution:
    def maxArea(self, height: List[int]) -> int:
        max_area = 0 * 0

        # Iterate through all pairs of container widths and heights:
        for i in range(len(height)):
            for j in range(len(height)):
                # Water container width is difference between indices:
                current_width = i - j
                
                # Water container height is the smallest of two heights:
                current_height = min(height[i], height[j])
                
                # 2-D container area is width multiplied by height:
                current_area = current_width * current_height
                
                # Change the area of largest container if new container is largest:
                max_area = max(current_area, max_area)
        
        # Return area of largest water container:
        return max_area


