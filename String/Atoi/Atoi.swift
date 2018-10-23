// Pass : 52 ms
class Solution {
    func myAtoi(_ str: String) -> Int {
        var trimStr = str.trimmingCharacters(in: .whitespaces)
        var chars = Array(trimStr)
        if(chars.count==0){
            return 0
        }
        
        var firstChar = chars[0]
        var firstString = String(firstChar)
        
        var isNum : Bool = (firstString>="0"&&firstString<="9")
        if (isNum){
            
            if(chars.count>1) {
                
                var secondChar = chars[1]
                var secondString = String(secondChar)
                if (secondString>="0"&&secondString<="9"){
                    
                    secondString = firstString + secondString 
                    for index in 2..<chars.count {
                        var char = chars[index]
                        var string = String(char) 
                        if(string>="0"&&string<="9"){
                            secondString=secondString+string
                            
                        }else{
                            break
                        }
                    }
                    
                    var result:Int? = Int(secondString)
                    
                    var overflow = Int(Int32.max) 
                    
                    
                    if result==nil {
                        return overflow
                    }else{
                        if ((result!)>overflow) {
                            
                            return overflow
                        }
                    }
                    
                    return result!
                    
                }
                
                
                
            }
            
            return Int(firstString)!
        }
        
        if(firstChar=="+") {
            if(chars.count>1) {
                
                var secondChar = chars[1]
                var secondString = String(secondChar)
                if (secondString>="0"&&secondString<="9"){
                    
                    
                    for index in 2..<chars.count {
                        var char = chars[index]
                        var string = String(char) 
                        if(string>="0"&&string<="9"){
                            secondString=secondString+string
                            
                        }else{
                            break
                        }
                    }
                    
                    var result :Int? = Int(secondString)
                    var overflow = Int(Int32.max)
                    if result == nil {
                        return overflow
                    }else{
                        if (result!>overflow) {
                            return overflow
                        }
                    }
                    
                    
                    return result! 
                }
                
                
            }
        }  
        
        
        if(firstChar=="-") {
            
            if(chars.count>1) {
                
                var secondChar = chars[1]
                var secondString = String(secondChar)
                if (secondString>="0"&&secondString<="9"){
                    
                    
                    for index in 2..<chars.count {
                        var char = chars[index]
                        var string = String(char) 
                        if(string>="0"&&string<="9"){
                            secondString=secondString+string
                            
                        }else{
                            break
                        }
                    }
                    var result :Int? = Int("-"+secondString)
                    var overflow = Int(Int32.min)
                    if result == nil {
                        return overflow
                    }else{
                        if (result!<overflow) {
                            return overflow
                        }
                    }
                    
                    
                    return result!
                }
                
                
            }
            
            return 0
        }
        
        
        
        
        return 0
    }
}
