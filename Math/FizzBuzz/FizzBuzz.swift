//24 ms, 击败100%
class Solution {
 
    func fizzBuzz(_ n: Int) -> [String] {
        
        var printString : [String] = []
        let count = n + 1 
        for i in 1..<count {

            var isFizz = i % 3
            var isBuzz = i % 5
            var isFizzBuzz = isFizz + isBuzz

            if isFizzBuzz == 0 {
                printString.append("FizzBuzz") 
            }else if isFizz == 0 {
                printString.append("Fizz") 
            }else if isBuzz == 0 {
                printString.append("Buzz") 
            }else {
                printString.append(String(i)) 
            }
        }

        return printString
    }
}