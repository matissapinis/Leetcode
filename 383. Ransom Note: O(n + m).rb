# 383. Ransom Note
# https://leetcode.com/problems/ransom-note/description?envType=study-plan-v2&envId=top-interview-150

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}

# O(n + m) algorithm for comparing if one string constructable from other:
def can_construct(ransom_note, magazine)
    count_note, count_magazine = Hash.new(0), Hash.new(0)

    # Create hashmap of letter count for each string:
    ransom_note.chars.each { |character| count_note[character] += 1 }
    magazine.chars.each { |character| count_magazine[character] += 1 }

    # Iterate through keys for note and if key is in magazine compare if magazine has at least note count for letter:
    count_note.each do |character, count|
        return false if count > count_magazine[character]
    end

    # Return true if magazine has at least as many of the letters of ransom note:
    true
end
