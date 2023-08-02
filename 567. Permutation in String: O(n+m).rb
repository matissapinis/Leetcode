# 567. Permutation in String
# https://leetcode.com/problems/permutation-in-string/description/

# @param {String} s1
# @param {String} s2
# @return {Boolean}

# O(n + m) algorithm for permutation substring using sliding window:
def check_inclusion(s1, s2)
       # Length of the two strings:
        n, m = s1.length, s2.length

        # If s1 is longer than s2, s1 cannot be a permutation of s2:
        return false if n > m

        # Build hashmaps for character counts of strings s1 and s2:
        count_s1, count_s2 = Array.new(26, 0), Array.new(26, 0)

        # Record the character count of string s1 and the first |s1| characters in string s2:
        for i in 0...n
            # Map to one of 26 indexes and increment count by one:
            count_s1[s1[i].ord - 'a'.ord] += 1
            count_s2[s2[i].ord - 'a'.ord] += 1
        end
        
        # Slide the window in s2 and update the character count of string s2:
        for i in n...m
            # If the two hashmaps match after any movement, return true:
            return true if count_s1 == count_s2
            
            # Slide the window by one character – increment new inside, decrement old outside:
            count_s2[s2[i].ord - 'a'.ord] += 1
            count_s2[s2[i - n].ord - 'a'.ord] -= 1
        end

        # If went through all windows without match, return false:
        return count_s1 == count_s2
end
# O(n + m) = O(n) (initial counts) + O(n) (first window in s2) + O(m - n) (remaining iterations over s2).
