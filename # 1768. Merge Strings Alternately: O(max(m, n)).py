# 1768. Merge Strings Alternately
# https://leetcode.com/problems/merge-strings-alternately/description/?envType=study-plan-v2&envId=leetcode-75

# O(max(m, n)) algorithm for merging strings with letters in alternating order:
class Solution:
    def mergeAlternately(self, word1: str, word2: str) -> str:
        merged_string = ""
        
        # Always add letter of first word, then second word to merged string:
        if len(word1) == len(word2):
            for i in range(len(word1)):
                merged_string += word1[i]
                merged_string += word2[i]
        # If first word shorter, add letter while you can from first word:
        elif len(word1) < len(word2):
            for i in range(len(word2)):
                if i < len(word1):
                    merged_string += word1[i]
                merged_string += word2[i]
        # If second word shorter, add letter while you can from second word:
        else:
            for i in range(len(word1)):
                merged_string += word1[i]
                if i < len(word2):
                    merged_string += word2[i]

        # Return string with letters merged in alternating order:        
        return merged_string
