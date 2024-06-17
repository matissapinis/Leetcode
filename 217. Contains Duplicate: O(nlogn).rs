// 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate/description/

// Trivial O(nlogn) algorithm for duplicates in array using built-in sorting:
impl Solution {
    pub fn contains_duplicate(nums: Vec<i32>) -> bool {
        // Sort number array in O(nlogn):
        let mut nums = nums;
        nums.sort();

        // Iterate through adjacent pairs of sorted numbers to check if they're equal:
        for i in 0..nums.len() - 1 {
            if nums[i] == nums[i + 1] {
                return true;
            }
        }

        // No duplicates found if none of pairs were equal:
        false
    }
}
