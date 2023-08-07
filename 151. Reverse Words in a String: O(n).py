# 151. Reverse Words in a String
# https://leetcode.com/problems/reverse-words-in-a-string/description/?envType=study-plan-v2&envId=leetcode-75

# O(n) algorithm for reversing the order of words in string:
class Solution:
    def reverseWords(self, s: str) -> str:
        word = ""
        word_list = []

        # Iterate through string, creating a list of words in it:
        for i in range(len(s)):
            # Add words between spaces into list:
            if s[i] == ' ' and len(word) > 0:
                word_list.append(word)
                word = ""
            # Create words from non-space characters:
            elif s[i] != ' ':
                word += s[i]
        
        # Make sure to add the last created word:
        if len(word) > 0:
            word_list.append(word)


        reversed_string = ""
        # Iterate through word list in reverse order, adding to string:
        for i in range(len(word_list) - 1, -1, -1):
            # Don't add space after last word:
            if i == 0:
                reversed_string += word_list[i]
            # Add spaces between non-last words:
            else:
                reversed_string += word_list[i] + " "

        # Return string with reversed word order:
        return reversed_string
