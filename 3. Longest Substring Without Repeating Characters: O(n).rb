# 3. Longest Substring Without Repeating Characters
# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

# @param {String} s
# @return {Integer}

# O(n) algorithm for length of longest substring using sliding window:
def length_of_longest_substring(s)
    # Initialize left index for sliding window and map for checking duplicate characters:
    l = 0
    map = {}

    max_length = 0

    # Slide window from left to right until end of string:
    for r in 0...s.length
        # If duplicate character found, slide left bound until duplicate is outside:
        if map.key?(s[r])
            # Update left index as largest of current index or next index after previous duplicate occurrence:
            # This avoids rechecking characters that have already been evaluated.
            l = [l, map[s[r]] + 1].max
        end

        # Add or update character's latest occurrence index in hashmap:
        map[s[r]] = r

        # Current length counts the number of characters in substring between bounds:
        current_length = r - l + 1

        # Update maximum length if new length is longest:
        max_length = [max_length, current_length].max
    end

    # Return length of longest substring:
    return max_length
end
