# 875. Koko Eating Bananas
# https://leetcode.com/problems/koko-eating-bananas/description/

# O(max(p) * n) algorithm for finding minimum k bananas per hour to eat n piles of bananas (exceeds time limit):
class Solution:
    def minEatingSpeed(self, piles: List[int], h: int) -> int:
        k_minimum = max(piles)
        # Iterate from down from largest k to check if can eat all piles in h hours:
        for k in range(max(piles), 0, -1):
            total_time = 0
            # Each pile takes ⌈p / k⌉ hours (i.e., rounded up):
            for i in range(len(piles)):
                total_time += math.ceil(piles[i] / k)
            # If total eating time fits within hours, update new minimum k:
            if total_time <= h:
                k_minimum = min(k_minimum, k)
        
        # Return found minimum k bananas per hour to eat all piles in h hours:
        return k_minimum
