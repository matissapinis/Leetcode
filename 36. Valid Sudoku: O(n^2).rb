# 36. Valid Sudoku
# https://leetcode.com/problems/valid-sudoku/description/

# @param {Character[][]} board
# @return {Boolean}

# O(n^2) algorithm for checking 9x9 matrix each row, column and 3x3 submatrix has no duplicates (n = 9):
def is_valid_sudoku(board)
    # Build a hashset for rows, columns, submatrices:
    rows = Hash.new { |h, k| h[k] = Set.new }
    columns = Hash.new { |h, k| h[k] = Set.new }
    squares = Hash.new { |h, k| h[k] = Set.new }

    # Iterate over all 9x9 entries in Sudoku board:
    for r in 0...9
        for c in 0...9
            # Skip empty entries:
            next if board[r][c] == "."
            
            # Check if entry already exists in that row, column or square:
            if (rows[r].include?(board[r][c]) ||
                columns[c].include?(board[r][c]) ||
                # Squares indexed by integer division by square size on row and column indices:
                squares[[r / 3, c / 3]].include?(board[r][c]))
                return false
            end

            # If entry doesn't have duplicate (yet), add it to row, column and submatrix hashsets:
            rows[r].add(board[r][c])
            columns[c].add(board[r][c])
            squares[[r / 3, c / 3]].add(board[r][c])
        end
    end

    # Return true if rows, columns, submatrices had no duplicates:
    true
end
