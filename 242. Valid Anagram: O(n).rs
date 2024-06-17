// 242. Valid Anagram
// https://leetcode.com/problems/valid-anagram/description/

// O(n) algorithm if string has anagram using hashmaps:
impl Solution {
    pub fn is_anagram(s: String, t: String) -> bool {
        // Cannot be anagram if lengths of strings are different:
        if s.len() != t.len() {
            return false;
        }

        // Build a hashmap of each character in string, then compare hashmaps in O(|s|):
        let mut count_s = std::collections::HashMap::new();
        let mut count_t = std::collections::HashMap::new();
        // Increment character counter by one:
        for c in s.chars() {
            *count_s.entry(c).or_insert(0) += 1;
        }
        for c in t.chars() {
            *count_t.entry(c).or_insert(0) += 1;
        }

        // Not an anagram if character counts aren't equal between strings:
        for (c, count) in &count_s {
            if count != count_t.get(c).unwrap_or(&0) {
                return false;
            }
        }

        // Is an anagram if no character counts were different:
        true
    }
}
