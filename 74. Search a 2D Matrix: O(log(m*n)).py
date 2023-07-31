# 74. Search a 2D Matrix
# https://leetcode.com/problems/search-a-2d-matrix/description/

# O(log(m*n)) algorithm to binary search a 2D sorted integer matrix:
class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        # Define the initial bounds of the 2D binary search:
        m, n = len(matrix), len(matrix[0])
        l, r = 0, m * n - 1

        # The loop continues until the left index is greater than the right index:
        while l <= r:
            # Take the middle of current binary search interval, dividing it in halves:
            # While m = (l + r) // 2 is more natural, it's prone to integer overflow (in C++ and Java).
            m = l + (r - l) // 2
            
            # Flatten 2D matrix into 1D array by using mapping from 1D midpoint to 2D indices:
            i, j = m // n, m % n

            # If target is on left 1D-half of interval, update right bound less than midpoint:
            if matrix[i][j] > target:
                r = m - 1
            # If target is on right 1D-half of interval, update left bound greater than midpoint:
            elif matrix[i][j] < target:
                l = m + 1
            # Return true if target is found:
            else:
                return True

        # Binary search doesn't find target:
        return False
