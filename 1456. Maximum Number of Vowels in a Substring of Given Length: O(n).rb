# 1456. Maximum Number of Vowels in a Substring of Given Length
# https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/description/?envType=study-plan-v2&envId=leetcode-75

# @param {String} s
# @param {Integer} k
# @return {Integer}

# O(n) algorithm for maximum number of vowels among substrings length k:
def max_vowels(s, k)
    # Helper function for returning 1 if character is a vowel:
    def is_vowel(c)
        if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U'
            return 1
        else
            return 0
        end
    end

    # Initialize current vowel count among the first k characters:
    current_count = 0
    for i in 0...k
        current_count += is_vowel(s[i])
    end

    max_count = current_count
    # Iterate through array with sliding window of substrings after the first one:
    for i in k...s.length
        # Subtract leftmost vowel and add the rightmost value when calculating new vowel count:
        current_count += -is_vowel(s[i - k]) + is_vowel(s[i])

        # Update maximum count if new count is greatest:
        max_count = [max_count, current_count].max
    end

    # Return the maximum number of vowels among substrings length k:
    return max_count
end
