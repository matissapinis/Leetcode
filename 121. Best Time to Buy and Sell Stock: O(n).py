# 121. Best Time to Buy and Sell Stock
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

# O(n) algorithm for finding largest consecutive difference in array:
class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        # Initialize minimum price and maximum profit variables:
        min_price = float('inf')
        max_profit = 0

        # Iterate through all prices:
        for i in range(len(prices)):
            # Update minimum price if current price is lower:
            min_price = min(min_price, prices[i])

            # Update maximum profit if current profit difference is greater:
            max_profit = max(max_profit, prices[i] - min_price)
                
        # Return maximum profit:
        return max_profit
