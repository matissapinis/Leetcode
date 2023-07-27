# 347. Top K Frequent Elements
# https://leetcode.com/problems/top-k-frequent-elements/description/

class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        map = {}

        # Creates a hashmap how many instances each number has:
        for i in range(len(nums)):
            map[nums[i]] = map.get(nums[i], 0) + 1

        # Sorts key-value pairs by values (biggest to lowest) and returns array of k largest values:
        sorted_items = sorted(map.items(), key=lambda x: x[1], reverse=True)[:k]
        
        # Returns array of keys from these top k key-value pairs:
        keys = [item[0] for item in sorted_items]
        
        return keys
