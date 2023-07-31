# 121. Best Time to Buy and Sell Stock
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

# @param {Integer[]} prices
# @return {Integer}

# O(n) algorithm for finding largest consecutive difference in array:
def max_profit(prices)
    # Initialize minimum price and maximum profit variables:
    min_price = Float::INFINITY
    max_profit = 0

    # Iterate through all prices:
    prices.each do |price|
        # Update minimum price if current price is lower:
        min_price = [min_price, price].min

        # Update maximum profit if current profit difference is greater:
        max_profit = [max_profit, price - min_price].max
    end
            
    # Return maximum profit:
    max_profit
end
