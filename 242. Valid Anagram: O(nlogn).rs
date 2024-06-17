// 242. Valid Anagram
// https://leetcode.com/problems/valid-anagram/description/

// Trivial algorithm if string has anagram using built-in sorting in O(s*log(s) + t*log(t)):
impl Solution {
    pub fn is_anagram(s: String, t: String) -> bool {
        // Sort each string in O(nlogn):
        let mut s_sorted = s.chars().collect::<Vec<char>>();
        let mut t_sorted = t.chars().collect::<Vec<char>>();
        s_sorted.sort();
        t_sorted.sort();

        // Is an anagram if sorted strings are equal:
        s_sorted == t_sorted
    }
}
