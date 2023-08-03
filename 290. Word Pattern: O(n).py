# 290. Word Pattern
# https://leetcode.com/problems/word-pattern/description/?envType=study-plan-v2&envId=top-interview-150

# O(n) algorithm for checking bijective pattern between string of characters and string of words:
class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        """
        1. For `pattern` assign each character an index.
        2. For `s` assign each word an index.
        3. Check if the values for both maps are equal.
        """

        indices_pattern = {}
        indices_s = {}

        # Create a hashmap with character as key and its position array as value:
        for i in range(len(pattern)):
            indices_pattern[pattern[i]] = indices_pattern.get(pattern[i], []) + [i]

        # Create a hashmap with word as key and its order number as value:
        word = ''
        word_number = 0
        for i in range(len(s)):
            # If non-space character, save it into potential word:
            if s[i] != ' ':
                word += s[i]
            # If space is found, add word with its order number to hashmap:
            else:
                indices_s[word] = indices_s.get(word, []) + [word_number]

                # Start creating new word with next order number:
                word = ''
                word_number += 1
        
        # Put last word into hashmap since it doesn't have trailing spaces:
        indices_s[word] = indices_s.get(word, []) + [word_number]

        # No bijection if size of sets is not the same:
        if len(indices_pattern.values()) != len(indices_s.values()):
            return False

        # Iterate and compare values of the two hashmaps – return false if bijection ruined:
        for (key_pattern, value_pattern), (key_s, value_s) in zip(indices_pattern.items(), indices_s.items()):
            if value_pattern != value_s:
                return False

        # Return true if the character position list matches word position list:
        return True

