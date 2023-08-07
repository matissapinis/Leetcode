# 345. Reverse Vowels of a String
# https://leetcode.com/problems/reverse-vowels-of-a-string/description/?envType=study-plan-v2&envId=leetcode-75

# O(n^2) algorithm for reversing vowel order in string (since slicing takes O(n) time):
class Solution:
    def reverseVowels(self, s: str) -> str:
        # Initialize left and right index for going through array from each side:
        l, r = 0, len(s) - 1

        # Helper function for returning true if character is a vowel:
        def is_vowel(c):
            return c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' or c == 'A' or c == 'E' or c == 'I' or c == 'O' or c =='U'

        # Go through the sorted array until indices meet in the middle:
        while l < r:
            # If both are vowels, swap them by slicing and move to next pair:
            if is_vowel(s[l]) and is_vowel(s[r]):
                placeholder_character = s[l]
                s = s[:l] + s[r] + s[(l + 1):]
                s = s[:r] + placeholder_character + s[(r + 1):]
                l += 1
                r -= 1
            # If left isn't a vowel, move left index right:
            elif not is_vowel(s[l]) and is_vowel(s[r]):
                l += 1
            # If right isn't a vowel, move right index left:
            elif is_vowel(s[l]) and not is_vowel(s[r]):
                r -= 1
            # If both aren't vowels, move to next pair
            else:
                l += 1
                r -= 1

        # Return string with reversed vowel order:
        return s
