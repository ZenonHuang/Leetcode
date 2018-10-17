
// Pass : 28 ms
class Solution {
    func reverse(_ x: Int) -> Int {
        var list = [Int]()
        var result = x
        while result != 0 {
            var num = result%10
            list.append(num)
            
            result=result/10
        }
        
        for index in 0..<list.count {
            result = result*10 + list[index]
        }
        
        if result>Int32.max || result<Int32.min {
            return 0
        }
        
        return result
        
    }
}
