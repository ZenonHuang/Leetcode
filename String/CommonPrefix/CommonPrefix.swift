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

//Pass: 28 ms 优化后
//优化点在于,得到第一个前缀后，根据前缀的长度/字符串的长度，得到一个最小的长度。每次直接用最小长度去比较，不断逼近结果
//之前的思路，是不断地从第一个比较到后面，同样的1000个字符，全部同样的前缀3个字符，则需要：（3+1）*1000 = 4000 次比较，新的方案，只需要 4 + 998 次。
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if(strs.count == 1 ){
            return strs[0]
        }
        
        var strList = strs
        
        var commonPrefix : String = ""
        
        if(strs.count>=2){
            var zeroStr : String = strList[0]
            var firstStr : String = strList[1]
            
            if(zeroStr.count<=0){
                return ""
            }
            
            if(firstStr.count<=0){
                return ""
            }
            
            var length : Int = 0
            var  needCompare : Bool = true
            
            while (needCompare){
                
                if(length>zeroStr.count){
                    break
                }
                if(length>firstStr.count){
                    break
                }
                
                var offsetIndex =  zeroStr.index( zeroStr.startIndex, offsetBy: length)
                var subString =  zeroStr[..<offsetIndex]
                var compareStr : String = String(subString)
                
                
                offsetIndex =   firstStr.index( firstStr.startIndex, offsetBy: length)
                subString =  firstStr[..<offsetIndex]
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
            
            print("first \(commonPrefix)")
            
            strList.remove(at: 1)
            strList.remove(at: 0)
            
        }
        
        for str in strList{
            
            if(str.count<1){
                return ""
            }
            
            var length : Int = 0
            if (commonPrefix.count < str.count){ 
                length = commonPrefix.count
            }else {
                length = str.count
            }
            
            while (length>0){
                
                var offsetIndex =  str.index( str.startIndex, offsetBy: length)
                var subString =  str[..<offsetIndex]
                var compareStr : String = String(subString)
                
                //裁剪公共前缀
                offsetIndex =  commonPrefix.index( commonPrefix.startIndex, offsetBy: length)
                subString =  commonPrefix[..<offsetIndex]
                
                commonPrefix = String(subString)
                print("compare item \(compareStr)")
                
                print("commonPrefix \( commonPrefix)")
                
                if(compareStr==commonPrefix){
                    
                    break
                }else{
                    
                    length = length - 1
                    if(length==0){
                        return ""
                    }
                }
                
            }
            
        }
        
        
        return commonPrefix
    }
}

//TODO
//改进思路： 使用 字典/Set 集合，记录字符次数。出现次数和整个数组大小相等，为公共字符。最后拼凑公共字符
