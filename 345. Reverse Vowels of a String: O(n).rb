# 345. Reverse Vowels of a String
# https://leetcode.com/problems/reverse-vowels-of-a-string/description/?envType=study-plan-v2&envId=leetcode-75

# @param {String} s
# @return {String}

# O(n) algorithm for reversing vowel order in string (since avoids O(n) slicing):
def reverse_vowels(s)
    # Initialize left and right index for going through array from each side:
    l, r = 0, s.length - 1

    # Helper function for returning true if character is a vowel:
    def is_vowel(c)
        return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U'
    end

    # Go through the sorted array until indices meet in the middle:
    while l < r
        # If both are vowels, swap them and move to next pair:
        if is_vowel(s[l]) && is_vowel(s[r])
            placeholder_character = s[l]
            s[l] = s[r]
            s[r] = placeholder_character
            l += 1
            r -= 1
        # If left isn't a vowel, move left index right:
        elsif !is_vowel(s[l]) && is_vowel(s[r])
            l += 1
        # If right isn't a vowel, move right index left:
        elsif is_vowel(s[l]) && !is_vowel(s[r])
            r -= 1
        # If both aren't vowels, move to next pair:
        else
            l += 1
            r -= 1
        end
    end

    # Return string with reversed vowel order:
    s
end
