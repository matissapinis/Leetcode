# 66. Plus One
# https://leetcode.com/problems/plus-one/description/?envType=study-plan-v2&envId=top-interview-150

# @param {Integer[]} digits
# @return {Integer[]}

# O(n) algorithm for converting digit array to one, where number is plus one:
def plus_one(digits)
    # Turn list of digit integers into list of digit strings:
    digits = digits.map(&:to_s)

    # Join list into a single string that's a number:
    digits = digits.join

    # Turn number string into number as integer:
    digits = digits.to_i

    # Increment number as integer by one:
    digits += 1

    # Turn number integer into number string:
    digits = digits.to_s

    # Turn number string into list of digit integers:
    digits = digits.chars.map(&:to_i)

    # Return digit array plus one as array:
    return digits
end
