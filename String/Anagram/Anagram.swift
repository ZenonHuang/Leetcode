// Pass: 60 ms
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if(!(s.count==t.count)){
            return false
        }
        
        var sDict = [UInt8: Int]()
        // var tDict = [Int: Int]()
        
        //1.遍历 s ，并存储相关字符号
        for charCode in s.utf8 {
            
            if let num: Int = sDict[charCode] {
                var updateNum = num + 1
                sDict.updateValue(updateNum, forKey: charCode)
            } else {//值不存在，给一个初始值
                sDict.updateValue(1, forKey: charCode)
            }
            
        }
        
        //2.遍历 t,并查询相关值，有则每次减1，无则直接 return
        for charCode in t.utf8 {
            
            if let num: Int = sDict[charCode] {
                var updateNum = num - 1
                sDict.updateValue(updateNum, forKey: charCode)
            } else {//值不存在，返回 false
                return false
            }
            
        }
        
        //3.查询 s,value 是否都为 0
        let values = sDict.values
        for v in values {
            var result = (v==0) 
            if(!result){
                return false
            }
        }
        
        return true
    }
}

