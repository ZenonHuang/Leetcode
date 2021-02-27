// 0 ms,击败 100%
// 利用 n & n-1 ，将最低位1抹 0 的特性： 10100（n）&10011(n-1)= 10000
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var num = n
        while num != 0 {
            num   = num & (num - 1)
            count = count + 1
        }
        return count
    }
}
//8ms,击败 65%
//常规循环和位移动
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        
        var num:Int = n
        var count:Int = 0

        while num > 0 {
            count = count + (num & 1)
            num = num >> 1
        }
        return count
    }
}