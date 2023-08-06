# 1431. Kids With the Greatest Number of Candies
# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/description/?envType=study-plan-v2&envId=leetcode-75

# O(n) algorithm for finding which elements greater than maximum if added number:
class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        # Initialize default result as no kids can have maximum candies:
        result = [False] * len(candies)

        # Save if i-th kid with extra candies can have maximum candies:
        for i in range(len(candies)):
            if candies[i] + extraCandies >= max(candies):
                result[i] = True

        # Return which kids can have maximum candies:
        return result
