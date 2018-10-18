// Pass, 超出时间限制
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var sList = [Character]()
        var ss = s
        
        for c in s {
            
            if(sList.contains(c)){
                ss=ss.replacingOccurrences(of: String(c) , with: "")
            }
            
            sList.append(c)
        }
        
        
        if ss.isEmpty {
            
            return -1
        }
        
        var index : Int = 0
        let countNum = sList.count
        while index<countNum {
            
            var c = sList[index]
            if ss.contains(String(c)) {
                return index
            }
            
            index = index + 1
        }
        
        return -1
    }
}

// Pass : 超出时间限制
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        
        var ss = s
        var cmopareStr = String()
        
        for c in ss {
            if(cmopareStr.contains(c)){
                ss=ss.replacingOccurrences(of: String(c) , with: "")
            }
            cmopareStr.append(c)
        }
        
        print(ss)
        
        if ss.isEmpty {
            print("empty")
            return -1
        }
        
        //得到字符
        let offsetIndex = ss.index(ss.startIndex, offsetBy: 0)
        let offsetCharacter = ss[ offsetIndex]
        print(offsetCharacter)
        //得到 String.index
        var indexS = s.index(of: offsetCharacter  )
        
        //得到真正的 index
        if let index = indexS {
            let distance = s.distance(from: s.startIndex, to: index)
            print("distance:", distance)
            
            return distance
        }
        
        
        
        
        return -1
    }
}


// Pass : 2624 ms
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var sList = [Character]()
        
        for c in s {
            sList.append(c)
            
        }
        
        
        var removeList = [Character]()
        var index : Int = 0
        let countNum = sList.count
        while index<countNum {
            var c = sList[0]
            sList.remove(at: 0)
            
            
            if(!sList.contains(c)){
                if(!removeList.contains(c)){
                    return index
                }
                
            }else{
                
                removeList.append(c)
            }
            
            index = index + 1
        }
        
        return -1
    }
}

// Pass: 644 ms
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        
        //创建字典
        var countDict = [UInt32:Int]()
        var indexDict = [UInt32:Int]()
        
        //给次数字典，下标字典赋值
        for (index,c) in s.unicodeScalars.enumerated() {
            
            let key = c.value
            if let num: Int = countDict[key] {
                countDict.updateValue(1, forKey: key)
            } else {//只出现一次的
                countDict.updateValue(0, forKey: key)
            }
            
            
            if let numIndex: Int =  indexDict[key] {
                indexDict.updateValue(index, forKey: key)
            } else {
                indexDict.updateValue(index, forKey: key)
            }
            
        }
        
        //拿到只出现一次的下标数组
        var list = [Int]()
        for (key, value) in countDict
        {
            if(value == 0){
                if let index: Int = indexDict[key] {
                    list.append(index)
                }
            }
        }
        
        
        //给出下标结果
        if(list.count>0){
            return list.sorted().first!
        }
        
        
        return -1
    }
}
