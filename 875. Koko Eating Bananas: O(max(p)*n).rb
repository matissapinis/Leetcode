# 875. Koko Eating Bananas
# https://leetcode.com/problems/koko-eating-bananas/description/

# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}

# O(max(p) * n) algorithm for finding minimum k bananas per hour to eat n piles of bananas (exceeds memory limit:
def min_eating_speed(piles, h)
    k_minimum = piles.max
    # Iterate from down from largest k to check if can eat all piles in h hours:
    for k in (1..piles.max).to_a.reverse
        total_time = 0
        # Each pile takes ⌈p / k⌉ hours (i.e., rounded up):
        piles.each do |pile|
            total_time += (pile.to_f / k).ceil
        end
        # If total eating time fits within hours, update new minimum k:
        k_minimum = [k_minimum, k].min if total_time <= h
    end
    
    # Return found minimum k bananas per hour to eat all piles in h hours:
    k_minimum
end
