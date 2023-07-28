# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# O(n) algorithm with O(1) space for two-sum using two indices:
def two_sum(numbers, target)
    # Initialize left and right index for going through array from each side:
    idx_L, idx_R = 0, numbers.length - 1

    # Go through the sorted array until indices meet in the middle:
    while idx_L < idx_R
        # Sum the smaller left number with bigger right number:
        current_sum = numbers[idx_L] + numbers[idx_R]

        # If two-sum is smaller than target, try next left number bigger:
        if current_sum < target
            idx_L += 1
        # If two-sum is larger than target, try next right number smaller:
        elsif current_sum > target
            idx_R -= 1
        # If target two-sum found, return number indices (incremented by one):
        else
            return [idx_L + 1, idx_R + 1]
        end
    end

    # If no two numbers add up to target, return empty list:
    []
end
