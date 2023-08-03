# 58. Length of Last Word
# https://leetcode.com/problems/length-of-last-word/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for finding length of last word in string:
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        word_found = False
        word_length = 0

        # Iterate backwards through string to find the last space (if exists):
        for i in range(len(s) - 1, -1, -1):
            # Skip over trailing spaces until word is found:
            if word_found == False:
                if s[i] != ' ':
                    word_found = True
                    # First found character increases word length by one:
                    word_length += 1
            else:
                # If still iterating through last word, increment its length:
                if s[i] != ' ':
                    word_length += 1
                # After word is found, find first leading space – then return length:
                else:
                    break
                    
        return word_length
