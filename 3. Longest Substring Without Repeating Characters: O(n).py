# 3. Longest Substring Without Repeating Characters
# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

# O(n) algorithm for length of longest substring using sliding window:
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        # Initialize left index for sliding window and map for checking duplicate characters:
        l = 0
        map = {}

        max_length = 0

        # Slide window from left to right until end of string:
        for r in range(len(s)):
            # If duplicate character found, slide left bound until duplicate is outside:
            if s[r] in map:
                # Update left index as largest of current index or next index after previous duplicate occurrence:
                # This avoids rechecking characters that have already been evaluated.
                l = max(l, map[s[r]] + 1)  

            # Add or update character's latest occurrence index in hashmap:
            map[s[r]] = r

            # Update maximum length if new length is longest (how many characters in substring):
            max_length = max(max_length, r - l + 1)

        # Return length of longest substring:
        return max_length
