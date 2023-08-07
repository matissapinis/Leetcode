# 151. Reverse Words in a String
# https://leetcode.com/problems/reverse-words-in-a-string/description/?envType=study-plan-v2&envId=leetcode-75

# @param {String} s
# @return {String}

# O(n) algorithm for reversing the order of words in string:
def reverse_words(s)
    word = ""
    word_list = []

    # Iterate through string, creating a list of words in it:
    s.each_char do |char|
        # Add words between spaces into list:
        if char == ' ' && !word.empty?
            word_list << word
            word = ""
        # Create words from non-space characters:
        elsif char != ' '
            word += char
        end
    end

    # Make sure to add the last created word:
    word_list << word unless word.empty?

    reversed_string = ""
    # Iterate through word list in reverse order, adding to string:
    word_list.reverse_each.with_index do |word, i|
        # Don't add space after last word:
        if i == word_list.length - 1
            reversed_string += word
        # Add spaces between non-last words:
        else
            reversed_string += word + " "
        end
    end

    # Return string with reversed word order:
    return reversed_string
end
