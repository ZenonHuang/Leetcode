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
