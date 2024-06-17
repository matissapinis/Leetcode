// 1. Two Sum
// https://leetcode.com/problems/two-sum/description/

// O(n) algorithm for indices of two elements summing to target using hashmap:
impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        // Initialize empty hashmap to store each number as key with value as index of that number:
        let mut map = std::collections::HashMap::new();

        // Iterate through each element in the vector, along with its index:
        for (i, num) in nums.iter().enumerate() {
            // If two numbers add up to the target, one number is the complement of the other (target minus number):
            let complement = target - num;

            // Check if the complement is in hashmap (if yes, we have found two numbers that add up to the target):
            if let Some(&complement_index) = map.get(&complement) {
                // Return indices of the two numbers (complement_index – self-explanatory, i – current number):
                return vec![complement_index as i32, i as i32];
            }

            // If complement is not in hashmap, add the current number and its index:
            map.insert(num, i);
        }

        // If no two numbers add up to target, return empty vector:
        vec![]
    }
}
