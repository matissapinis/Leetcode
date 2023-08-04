# 1768. Merge Strings Alternately
# https://leetcode.com/problems/merge-strings-alternately/description/?envType=study-plan-v2&envId=leetcode-75

# @param {String} word1
# @param {String} word2
# @return {String}

# O(max(m, n)) algorithm for merging strings with letters in alternating order:
def merge_alternately(word1, word2)
    merged_string = ""
    
    # Always add letter of first word, then second word to merged string:
    if word1.length == word2.length
        for i in 0...word1.length
            merged_string += word1[i]
            merged_string += word2[i]
        end
    # If first word shorter, add letter while you can from first word:
    elsif word1.length < word2.length
        for i in 0...word2.length
            if i < word1.length
                merged_string += word1[i]
            end
            merged_string += word2[i]
        end
    # If second word shorter, add letter while you can from second word:
    else
        for i in 0...word1.length
            merged_string += word1[i]
            if i < word2.length
                merged_string += word2[i]
            end
        end
    end

    # Return string with letters merged in alternating order:        
    return merged_string
end
