# 36. Valid Sudoku
# https://leetcode.com/problems/valid-sudoku/description/

# O(n^2) algorithm for checking 9x9 matrix each row, column and 3x3 submatrix has no duplicates (n = 9):
class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
        # Build a hashset for rows, columns, submatrices:
        rows = collections.defaultdict(set)
        columns = collections.defaultdict(set)
        squares = collections.defaultdict(set)

        # Iterate over all 9x9 entries in Sudoku board:
        for r in range(9):
            for c in range(9):
                # Skip empty entries:
                if board[r][c] == ".":
                    continue
                
                # Check if entry already exists in that row, column or square:
                if (board[r][c] in rows[r] or
                    board[r][c] in columns[c] or
                    # Squares indexed by integer division by square size on row and column indices:
                    board[r][c] in squares[(r // 3, c // 3)]):
                    return False

                # If entry doesn't have duplicate (yet), add it to row, column and submatrix hashsets:
                rows[r].add(board[r][c])
                columns[c].add(board[r][c])
                squares[(r // 3, c // 3)].add(board[r][c])
                
        # Return true if rows, columns, submatrices had no duplicates:
        return True
