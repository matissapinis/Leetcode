# 66. Plus One
# https://leetcode.com/problems/plus-one/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for converting digit array to one, where number is plus one:
class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        # Turn list of digit integers into list of digit strings:
        digits = [str(d) for d in digits]

        # Join list into a single string that's a number:
        digits = ''.join(digits)

        # Turn number string into number as integer:
        digits = int(digits)

        # Increment number as integer by one:
        digits += 1

        # Turn number integer into number string:
        digits = str(digits)

        # Turn number string into list of digit integers:
        digits = [int(d) for d in digits]

        # Return digit array plus one as array:
        return digits
