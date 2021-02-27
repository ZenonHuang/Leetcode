//8 ms,时间击败 100%
//利用系统的方法做字符串的转换，虽然更快，但更值得学习二进制操作的思想
class Solution {
    func reverseBits(_ n: Int) -> Int {
        var str = String(n, radix:2)
        str = String(str.reversed())
        if str.count < 32 {
            for _ in 0..<(32 - str.count) {
                str.append("0")
            }
        }
        if let number = Int(str, radix: 2) {
            return number
        }
        return 0
    }
}

//12 ms,时间击败 97%
//分治的策略，直接划分开，再反转，拼凑
class Solution {
    func reverseBits(_ n: Int) -> Int {
        var n = n
        n = (n >> 16) | (n << 16)
        n = ((n & 0xff00ff00) >> 8) | ((n & 0x00ff00ff) << 8)
        n = ((n & 0xf0f0f0f0) >> 4) | ((n & 0x0f0f0f0f) << 4)
        n = ((n & 0xcccccccc) >> 2) | ((n & 0x33333333) << 2)
        n = ((n & 0xaaaaaaaa) >> 1) | ((n & 0x55555555) << 1)
        return n
    }
}

//16 ms,时间击败 82%
//常规思路，取出一位，然后反转一位过去
class Solution {
    func reverseBits(_ n: Int) -> Int {
        var num = n
        var ret : Int = 0
        var power : Int = 31
        while num != 0 {
            ret = ret + ((num & 1) << power) 
            num = num >> 1
            power = power - 1
        }
        return ret
    }
}