# O(logm + logn) algorithm to binary search a 2D sorted integer matrix (note that logm + logn = log(m*n)):
class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        # Define the row initial bounds to binary search over:
        m, n = len(matrix), len(matrix[0])
        top, bottom = 0, m - 1

        # Binary search for the row that contains target:
        while top <= bottom:
            # Take the middle row of current binary search interval, dividing it in halves:
            # While row = (top + bottom) // 2 is more natural, it's prone to integer overflow.
            row = top + (bottom - top) // 2

            # If target is on bottom-half of rows, update top bound greater than mid row:
            if matrix[row][-1] < target:
                top = row + 1
            # If target is on top-half of rows, update bottom bound less than mid row:
            elif matrix[row][0] > target:
                bottom = row - 1
            # Break if row with target is found:
            else:
                break

        # Return false if no row with target was found:
        if not (top <= bottom):
            return False

        # Define the column initial bounds to binary search over found row:
        L, R = 0, n - 1
        while L <= R:
            # Take the middle column of current binary search interval, dividing it in halves:
            M = L + (R - L) // 2

            # If target is on right half of columns, update left bound greater than midpoint:
            if matrix[row][M] < target:
                L = M + 1
            # If target is on left half of columns, update right bound less than midpoint:
            elif matrix[row][M] > target:
                R = M - 1
            # Return true if target is found:
            else:
                return True
