
//动态规划
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var dp = [Int](repeating:0, count: n + 1)
        for i in 0...n {
            if i < 4 {
                dp[i] = i
            } else {
                dp[i] = dp[i - 1] + dp[i - 2]
            }
        }
        return dp[n]
    }
}


class Solution {
    func climbStairs(_ n: Int) -> Int {
        //滚动数组方案
        var p = 0, q = 0, r = 1;
        for i in 1..<(n+1) {
            p = q; 
            q = r; 
            r = p + q;
        }
        return r;
    }
}