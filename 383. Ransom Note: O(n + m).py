# 383. Ransom Note
# https://leetcode.com/problems/ransom-note/description?envType=study-plan-v2&envId=top-interview-150

# O(n + m) algorithm for comparing if one string constructable from other:
class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        count_note, count_magazine = {}, {}

        # Create hashmap of letter count for each string:
        for i in range(len(ransomNote)):
            count_note[ransomNote[i]] = count_note.get(ransomNote[i], 0) + 1

        for i in range(len(magazine)):
            count_magazine[magazine[i]] = count_magazine.get(magazine[i], 0) + 1

        # Iterate through keys for note and if key is in magazine compare if magazine has at least note count for letter:
        for character in count_note:
            if character not in count_magazine or count_note[character] > count_magazine[character]:
                return False

        # Return true if magazine has at least as many of the letters of ransom note:
        return True
