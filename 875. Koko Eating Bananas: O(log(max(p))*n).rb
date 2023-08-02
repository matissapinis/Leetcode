# 875. Koko Eating Bananas
# https://leetcode.com/problems/koko-eating-bananas/description/

# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}

# O(log(max(p)) * n) algorithm for finding minimum k bananas per hour to eat n piles of bananas:
def min_eating_speed(piles, h)
    # Define the initial bounds of the binary search over possible k values:
    l, r = 1, piles.max
    k_minimum = r

    while l <= r
        # Take k as midpoint of possible k values, i.e., the current binary search interval:
        # While k = (l + r) / 2 is more natural, it's prone to integer overflow (in C++ and Java).
        k = l + (r - l) / 2

        total_hours = 0
        # Each pile takes ⌈p / k⌉ hours (i.e., rounded up):
        piles.each do |pile|
            total_hours += (pile.to_f / k).ceil
        end
        
        # If hours fit in time, update new minimum k and right bound less than k:
        if total_hours <= h
            k_minimum = [k_minimum, k].min
            r = k - 1
        # If more hours needed, update left bound more than k:
        else
            l = k + 1
        end
    end

    # Return found minimum k bananas per hour to eat all piles in h hours:
    return k_minimum
end
