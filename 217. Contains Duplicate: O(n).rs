// 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate/description/

// O(n) algorithm for duplicates in array with hashmap of each number count:
impl Solution {
    pub fn contains_duplicate(nums: Vec<i32>) -> bool {
        let mut map = std::collections::HashMap::new();

        for &num in &nums {
            // If number is in hashmap then it appears twice:
            if map.contains_key(&num) {
                return true;
            }

            // Increase number count by one (insert hashmap if not present):
            map.entry(num).and_modify(|count| *count += 1).or_insert(1);
        }

        // Return false if there were no duplicates found:
        false
    }
}
