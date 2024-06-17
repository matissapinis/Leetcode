// 125. Valid Palindrome
// https://leetcode.com/problems/valid-palindrome/description/

// O(n) algorithm to check if string is palindromic:
impl Solution {
    pub fn is_palindrome(s: String) -> bool {
        // Convert string to lowercase alphanumeric characters only:
        let s = s.to_lowercase();
        let s = s.chars().filter(|c| c.is_alphanumeric()).collect::<String>();

        // Check if all i-th and i-th-to-last characters are equal:
        for i in 0..s.len() / 2 {
            if s.as_bytes()[i] != s.as_bytes()[s.len() - i - 1] {
                return false;
            }
        }

        // Return true if no such characters were not equal:
        true
    }
}
