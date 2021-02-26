//2021/2/26  
//216 ms ,时间击败了98.21%
class Solution {
    func reverseString(_ s: inout [Character]) {

        let count:Int = s.count
        let avr = s.count / 2

        var temp: Character = " "
        for i in 0..<avr {
            temp = s[i]
            s[i] = s[count - i - 1]
            s[count - i - 1] = temp
        }
        
    }
}


// Pass : 136 ms
class Solution {
    func reverseString(_ s: String) -> String {
        return String(s.reversed())
    }
}
