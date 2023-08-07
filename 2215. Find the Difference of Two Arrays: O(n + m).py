# 2215. Find the Difference of Two Arrays
# https://leetcode.com/problems/find-the-difference-of-two-arrays/description/?envType=study-plan-v2&envId=leetcode-75

# O(n + m) algorithm for finding differing elements between each of two arrays:
class Solution:
    def findDifference(self, nums1: List[int], nums2: List[int]) -> List[List[int]]:
        result = [[], []]

        count_1, count_2 = {}, {}

        # Create a hashmap with number of occurences for each element:
        for i in range(len(nums1)):
            count_1[nums1[i]] = count_1.get(nums1[i], 0) + 1
            
        for i in range(len(nums2)):
            count_2[nums2[i]] = count_2.get(nums2[i], 0) + 1
        
        # Save `nums1` integer if not present in `nums2`:
        for key, value in count_1.items():
            if key not in count_2:
                result[0].append(key)
        
        # Save `nums2` integer if not present in `nums1`:
        for key, value in count_2.items():
            if key not in count_1:
                result[1].append(key)
        
        # Return lists of differing elements between each of two arrays:
        return result
