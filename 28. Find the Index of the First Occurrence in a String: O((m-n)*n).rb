# 28. Find the Index of the First Occurrence in a String
# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/?envType=study-plan-v2&envId=top-interview-150

# @param {String} haystack
# @param {String} needle
# @return {Integer}

# Trivial O((m - n) * n) algorithm for finding index of first occuring substring:
def str_str(haystack, needle)
    m = haystack.length
    n = needle.length

    # Iterate through haystack from index i to m - n considering slicing:
    (0..(m - n)).each do |i|
        # Return index if needle length n equal to haystack sliced from i to (i + n):
        if needle == haystack[i, n]
            return i
        end
    end

    # No needle was found in haystack:
    return -1
end
