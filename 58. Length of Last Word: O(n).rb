# 58. Length of Last Word
# https://leetcode.com/problems/length-of-last-word/description/?envType=study-plan-v2&envId=top-interview-150

# @param {String} s
# @return {Integer}

# O(n) algorithm for finding length of last word in string:
def length_of_last_word(s)
    word_found = false
    word_length = 0

    # Iterate backwards through string to find the last space (if exists):
    (s.length - 1).downto(0) do |i|
        # Skip over trailing spaces until word is found:
        if word_found == false
            if s[i] != ' '
                word_found = true
                # First found character increases word length by one:
                word_length += 1
            end
        else
            # If still iterating through last word, increment its length:
            if s[i] != ' '
                word_length += 1
            # After word is found, find first leading space – then return length:
            else
                break
            end
        end
    end
                
    return word_length
end
