
//时间击败 98.14%
//由于   dp[i] = max(dp[i-2] + nums[i], dp[i-1]) 的方式消耗大，使用滚动数组的方式存储结果
class Solution {
    func rob(_ nums: [Int]) -> Int {
     
        var first = 0 , second = 0,temp = 0
        for i in nums {
            temp = second;
            second = max(second,first+i);
            first = temp;
        }
        return second;
    }
}