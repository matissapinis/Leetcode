# 567. Permutation in String
# https://leetcode.com/problems/permutation-in-string/description/

# O(n + m) algorithm for permutation substring using sliding window:
class Solution:
    def checkInclusion(self, s1: str, s2: str) -> bool:
        # Length of the two strings:
        n, m = len(s1), len(s2)

        # If s1 is longer than s2, s1 cannot be a permutation of s2:
        if n > m:
            return False

        # Build hashmaps for character counts of strings s1 and s2:
        count_s1, count_s2 = [0] * 26, [0] * 26

        # Record the character count of string s1 and the first |s1| characters in string s2:
        for i in range(n):
            # Map to one of 26 indexes and increment count by one:
            count_s1[ord(s1[i]) - ord('a')] += 1
            count_s2[ord(s2[i]) - ord('a')] += 1
        
        # Slide the window in s2 and update the character count of string s2:
        for i in range(n, m):
            # If the two hashmaps match after any movement, return true:
            if count_s1 == count_s2:
                return True
            
            # Slide the window by one character – increment new inside, decrement old outside:
            count_s2[ord(s2[i]) - ord('a')] += 1
            count_s2[ord(s2[i - n]) - ord('a')] -= 1

        # If went through all windows without match, return false:
        return count_s1 == count_s2
# O(n + m) = O(n) (initial counts) + O(n) (first window in s2) + O(m - n) (remaining iterations over s2).
