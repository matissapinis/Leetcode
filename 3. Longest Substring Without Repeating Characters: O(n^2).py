# 3. Longest Substring Without Repeating Characters
# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

# O(n^2) algorithm for length of longest substring using sliding windows:
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        # Initialize left and right index for sliding window through string:
        l, r = 0, 0
        n = len(s)

        # Initialize map for checking duplicate characters in string and length counters:
        map = {}

        max_length = 0
        current_length = 0

        # Slide window left to right until end of string:
        while l < n and r < n:
            # If duplicate character found, start new window to the right:
            if s[r] in map:
                l += 1
                r = l

                map = {}
                current_length = 0
            
            # Add character to hashmap and elongate window to the right:
            map[s[r]] = map.get(s[r], 0) + 1
            current_length += 1
            r += 1

            # Update maximum length if new length is longest:
            max_length = max(max_length, current_length)

        # Return length of longest substring:
        return max_length


