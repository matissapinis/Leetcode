# 392. Is Subsequence
# https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=top-interview-150

# @param {String} s
# @param {String} t
# @return {Boolean}

# O(m + n) algorithm for evaluating if one string is subsequence of another:
def is_subsequence(s, t)
    # Initialize array to check if each character in `s` was found:
    character_found = Array.new(s.length, false)

    # Iterate through characters in `t` and `s` with two pointers:
    l, r = 0, 0
    while l < t.length and r < s.length
        # If match found, save as found and start checking next in `s`: 
        if t[l] == s[r]
            character_found[r] = true
            r += 1
        end

        # If match not found, keep searching through `t`:
        l += 1
    end

    # If some character wasn't found, it's not a subsequence:
    character_found.each do |truth_value|
        return false if truth_value == false
    end

    # If all characters in sequence were found, it is a subsequence:
    return true
end
