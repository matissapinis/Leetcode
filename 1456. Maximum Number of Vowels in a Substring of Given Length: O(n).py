# 1456. Maximum Number of Vowels in a Substring of Given Length
# https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/description/?envType=study-plan-v2&envId=leetcode-75

# O(n) algorithm for maximum number of vowels among substrings length k:
class Solution:
    def maxVowels(self, s: str, k: int) -> int:
        # Helper function for returning 1 if character is a vowel:
        def is_vowel(c):
            if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' or c == 'A' or c == 'E' or c == 'I' or c == 'O' or c =='U':
                return 1
            else:
                return 0

        # Initialize current vowel count among the first k characters:
        current_count = 0
        for i in range(k):
            current_count += is_vowel(s[i])

        max_count = current_count
        # Iterate through array with sliding window of substrings after the first one:
        for i in range(k, len(s)):
            # Subtract leftmost vowel and add the rightmost value when calculating new vowel count:
            current_count += -is_vowel(s[i - k]) + is_vowel(s[i])

            # Update maximum count if new count is greatest:
            max_count = max(max_count, current_count)
        
        # Return the maximum number of vowels among substrings length k:
        return max_count
