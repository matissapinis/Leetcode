# 74. Search a 2D Matrix
# https://leetcode.com/problems/search-a-2d-matrix/description/

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}

# O(logm + logn) algorithm to binary search a 2D sorted integer matrix (note that logm + logn = log(m*n)):
def search_matrix(matrix, target)
    # Define the row initial bounds to binary search over:
    m, n = matrix.length, matrix[0].length
    top, bottom = 0, m - 1

    # Binary search for the row that may contain target:
    while top <= bottom
        # Take the middle row of current binary search interval, dividing it in halves:
        # While row = (top + bottom) / 2 is more natural, it's prone to integer overflow.
        row = top + (bottom - top) / 2

        # If target may be in bottom-half of rows, update top bound greater than mid row:
        if matrix[row][-1] < target
            top = row + 1
        # If target may be in top-half of rows, update bottom bound less than mid row:
        elsif matrix[row][0] > target
            bottom = row - 1
        # Break if potential row with target is found:
        else 
            break
        end
    end

    # Return false if no potential row with target was found:
    return false if not (top <= bottom)

    # Define the column initial bounds to binary search over found row:
    l, r = 0, n - 1

    # Binary search for the column that contains target in found row:
    while l <= r
        # Take the middle column of current binary search interval, dividing it in halves:
        m = l + (r - l) / 2

        # If target is on right half of columns, update left bound greater than midpoint:
        if matrix[row][m] < target
            l = m + 1
        # If target is on left half of columns, update right bound less than midpoint:
        elsif matrix[row][m] > target
            r = m - 1
        # Return true if target is found:
        else
            return true
        end
    end

    # Binary search doesn't find target:
    return false
end
