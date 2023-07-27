# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# Trivial O(n^2) algorithm timed out, so here's a O(n) hashmap solution suggested by ChatGPT (GPT-4):
def two_sum(nums, target)
    # Initialize an empty hash map. This will store each number in the array as a key,
    # and the corresponding value will be the index of that number in the array.
    map = {}

    # The 'each_with_index' method is used to iterate through each element in the array,
    # along with its index. The variables 'num' and 'i' represent the current element and
    # its index, respectively.
    nums.each_with_index do |num, i|
        # Calculate the complement of the current number. If two numbers add up to the target,
        # one number is the complement of the other (target minus the number).
        complement = target - num

        # Check if the complement is in the hash map. The 'key?' method checks if a key exists in the hash.
        # If the complement exists, it means we have found two numbers that add up to the target.
        if map.key?(complement)
            # Return the indices of the two numbers. 'map[complement]' gets the index of the complement,
            # and 'i' is the index of the current number.
            return [map[complement], i]
        end

        # If the complement is not in the hash map, add the current number and its index to the hash map.
        map[num] = i
    end

    # If no two numbers add up to the target, return an empty array.
    []
end
