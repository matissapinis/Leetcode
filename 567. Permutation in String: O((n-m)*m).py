# 567. Permutation in String
# https://leetcode.com/problems/permutation-in-string/description/

# O((n - m) * m) algorithm for permutation substring using sliding window:
class Solution:
    def checkInclusion(self, s1: str, s2: str) -> bool:
        # Build a hashmap of each character in permutation substring:
        count_s1, count_s2 = {}, {}
        for i in range(len(s1)):
            # Increment character counter by one (with 'get' method if map doesn't exist):
            count_s1[s1[i]] = count_s1.get(s1[i], 0) + 1

        # Start a sliding window through s2 the length of s1:
        l = 0
        while l < len(s2) - len(s1) + 1:
            for i in range(l, l + len(s1)):
                # If characters don't match, stop checking for permutation substring here:
                if s2[i] not in count_s1:
                    break
                # If characters match, save them in second hashmap:
                else:
                    count_s2[s2[i]] = count_s2.get(s2[i], 0) + 1
            
            # If string contains permutation substring, hashmaps are equal:
            if count_s1 == count_s2:
                return True
            # Otherwise move the sliding window further right by one and reset second hashmap:
            else:
                l += 1
                count_s2 = {}
        
        # If permutation substring was never found, return false:
        return False
