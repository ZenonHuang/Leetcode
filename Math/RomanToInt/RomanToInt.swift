
//36 ms,时间击败 60%，待优化
class Solution {

  func romanToInt(_ s: String) -> Int {
        let dict = initDict()
 
        let chars : [Character]  = s.reversed()
        var res = 0
        
        for i in 0..<chars.count {
            // print("第 \(i) 次遍历")
            let dictKey = String(chars[i])
            guard let current = dict[dictKey] else {
                print("dictKey end \(res) ")
                return res
            }

             if i == 0 {
                res = res + current
                continue
             }
            guard let preValue = dict[String(chars[i - 1])] else {
                print("preDictKey end \(res) ")
                return res
            }
            if i > 0 && current < preValue {
                // print("\(res) - \(current)")
                res = res - current
            } else {
                //  print("\(res) + \(current)")
                res = res + current
            }
            
            // print("第 \(i) 次遍历结束: res=\(res)")
        }
        // print(" end \(res) ")
        return res
    }
    
    func initDict() -> [String: Int] {
        var dict = [String: Int]()
        
        dict["I"] = 1
        dict["V"] = 5
        dict["X"] = 10
        dict["L"] = 50
        dict["C"] = 100
        dict["D"] = 500
        dict["M"] = 1000
        
        return dict
    }
}