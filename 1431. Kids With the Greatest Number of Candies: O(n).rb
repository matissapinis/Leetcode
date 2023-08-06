# 1431. Kids With the Greatest Number of Candies
# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/description/?envType=study-plan-v2&envId=leetcode-75

# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}

# O(n) algorithm for finding which elements greater than maximum if added number:
def kids_with_candies(candies, extra_candies)
        # Initialize default result as no kids can have maximum candies:
        result = Array.new(candies.length, false)

        # Save if i-th kid with extra candies can have maximum candies:
        for i in 0...candies.length
            if candies[i] + extra_candies >= candies.max
                result[i] = true
            end
        end

        # Return which kids can have maximum candies:
        result
end
