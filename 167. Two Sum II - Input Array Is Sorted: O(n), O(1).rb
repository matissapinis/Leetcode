# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# O(n) algorithm with O(1) space for two-sum using two indices:
def two_sum(numbers, target)
    # Initialize left and right index for going through array from each side:
    l, r = 0, numbers.length - 1

    # Go through the sorted array until indices meet in the middle:
    while l < r
        # Sum the smaller left number with larger right number:
        current_sum = numbers[l] + numbers[r]

        # If two-sum is smaller than target, try next left number larger:
        if current_sum < target
            l += 1
        # If two-sum is larger than target, try next right number smaller:
        elsif current_sum > target
            r -= 1
        # If target two-sum found, return number indices (incremented by one):
        else
            return [l + 1, r + 1]
        end
    end

    # If no two numbers add up to target, return empty list:
    []
end
