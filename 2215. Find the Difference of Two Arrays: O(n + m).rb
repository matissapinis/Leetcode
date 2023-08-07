# 2215. Find the Difference of Two Arrays
# https://leetcode.com/problems/find-the-difference-of-two-arrays/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}

# O(n + m) algorithm for finding differing elements between each of two arrays:
def find_difference(nums1, nums2)
        result = [[], []]

        count_1, count_2 = Hash.new(0), Hash.new(0)

        # Create a hashmap with number of occurences for each element:
        for i in 0...nums1.length
            count_1[nums1[i]] += 1
        end
        
        for i in 0...nums2.length
            count_2[nums2[i]] += 1
        end

        # Save `nums1` integer if not present in `nums2`:
        count_1.each_key do |key|
            result[0] << key unless count_2.key?(key)
        end
        
        # Save `nums2` integer if not present in `nums1`:
        count_2.each_key do |key|
            result[1] << key unless count_1.key?(key)
        end
        
        # Return lists of differing elements between each of two arrays:
        result
end
