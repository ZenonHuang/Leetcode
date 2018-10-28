//Pass : 292 ms
//非常需要优化
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if(strs.count == 1 ){
            return strs[0]
        }
        
        var commonPrefix : String = ""
        
        var strList = strs
        
        var index : Int = 0
        var length : Int = 0
        var  needCompare : Bool = true
        
        while strList.count > 1 {
            
            length = 1 
            needCompare = true
            
            while (needCompare){
                
                
                
                if(strList[0].count<=0){
                    return ""
                }
                
                if(strList[1].count<=0){
                    return ""
                }
                if(length > strList[0].count){
                    
                    break
                }
                if(length > strList[1].count){
                    
                    break
                }
                
                var offsetIndex =  strList[0].index( strList[0].startIndex, offsetBy: length)
                var subString =  strList[0][..<offsetIndex]
                var compareStr : String = String(subString)
                
                
                offsetIndex =   strList[1].index( strList[1].startIndex, offsetBy: length)
                subString =  strList[1][..<offsetIndex]
                let compareToStr : String = String(subString)
                
                
                if(compareStr==compareToStr){
                    
                    commonPrefix = compareStr
                    
                    length = length + 1
                    
                }else{
                    needCompare = false
                    if(length==1){// 1个相同的字符前缀都没有
                        return ""
                    }
                }
                
            }
            
            
            if(strList.count>0){
                strList.remove(at: 0)
            }
            
            if(strList.count>0){
                strList.remove(at: 0)
            }
            
            if(commonPrefix.count>0){
                
                strList.insert(commonPrefix, at: 0)
            }else{
                return ""
            }
            
            index = index + 1
        }
        
        return commonPrefix
    }
}

//TODO
//改进思路： 使用 字典/Set 集合，记录字符次数。出现次数和整个数组大小相等，为公共字符。最后拼凑公共字符
