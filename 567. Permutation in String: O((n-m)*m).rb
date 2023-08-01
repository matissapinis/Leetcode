# 567. Permutation in String
# https://leetcode.com/problems/permutation-in-string/description/

# @param {String} s1
# @param {String} s2
# @return {Boolean}

# O((n - m) * m) algorithm for permutation substring using sliding window (exceeds time limit):
def check_inclusion(s1, s2)
    # Build a hashmap of each character in permutation substring:
    count_s1, count_s2 = {}, {}
    for i in 0...s1.length
        # Increment character counter by one (with 'get' method if map doesn't exist):
        count_s1[s1[i]] = count_s1.fetch(s1[i], 0) + 1
    end

    # Start a sliding window through s2 the length of s1:
    l = 0
    while l < s2.length - s1.length + 1
        for i in l...(l + s1.length)
            # If characters don't match, stop checking for permutation substring here:
            if not count_s1.key?(s2[i])
                break
            # If characters match, save them in second hashmap:
            else
                count_s2[s2[i]] = count_s2.fetch(s2[i], 0) + 1
            end
        end
        
        # If string contains permutation substring, hashmaps are equal:
        if count_s1 == count_s2
            return true
        # Otherwise move the sliding window further right by one and reset second hashmap:
        else
            l += 1
            count_s2 = {}
        end
    end
    
    # If permutation substring was never found, return false:
    return false
end
