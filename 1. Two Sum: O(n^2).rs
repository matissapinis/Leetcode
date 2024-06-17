// 1. Two Sum
// https://leetcode.com/problems/two-sum/description/

// Brute force O(n^2) algorithm to return two indices that sum up to target:
impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        // Iterate through pairs of numbers (if equal skip, else check if sums to target):
        for i in 0..nums.len() {
            for j in i + 1..nums.len() {
                if nums[i] + nums[j] == target {
                    return vec![i as i32, j as i32];
                }
            }
        }
        // If no solution found, return an empty vector:
        vec![]
    }
}
