# 11. Container With Most Water
# https://leetcode.com/problems/container-with-most-water/description/

# @param {Integer[]} height
# @return {Integer}

# O(n) algorithm for largest water container area in array using two indices:
def max_area(height)
    # Initialize left and right index for going through array from each side:
    idx_L, idx_R = 0, height.length - 1

    max_area = 0

    # Go through the array until indices meet in the middle:
    while idx_L < idx_R
        # 2-D water container area is width (index difference) by height (smallest of the two):
        current_area = (idx_R - idx_L) * [height[idx_L], height[idx_R]].min

        # Update area of largest container if new container is largest:
        max_area = [max_area, current_area].max

        # Move left index right if left height is smaller:
        if height[idx_L] < height[idx_R]
            idx_L += 1
        # Move right index left otherwise: 
        else
            idx_R -= 1
        end
    end

    # Return area of largest water container:
    return max_area
end
