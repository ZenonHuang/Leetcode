//160 ms,时间击败 100%,内存击败 90 %
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let count = nums.count;
        var missing = count
        for i in 0..<count {
            missing ^= i ^ nums[i];
        }
        return missing;
    }
}