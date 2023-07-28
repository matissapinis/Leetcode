# 11. Container With Most Water
# https://leetcode.com/problems/container-with-most-water/description/

# @param {Integer[]} height
# @return {Integer}

# Trivial O(n^2) algorithm for largest water container area in array (exceeds time limit):
def max_area(height)
    max_area = 0

    # Iterate through all pairs of container widths and heights:
    for i in 0...height.length do
        for j in 0...height.length do
            # Water container width is difference between indices:
            current_width = i - j

            # Water container height is the smallest of two heights:
            current_height = [height[i], height[j]].min
            
            # 2-D container area is width multiplied by height:
            current_area = current_width * current_height
            
            # Change the area of largest container if new container is largest:
            max_area = [current_area, max_area].max
        end
    end

    # Return area of largest water container:
    return max_area
end
