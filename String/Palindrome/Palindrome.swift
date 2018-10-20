// Pass: 144 ms
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        //存入字符 ASCII 码数组
        var list = [UInt8]()
        for char in s.utf8  {
            //大写字母
            if(char > 96 && char < 123) {
                var smallChar = char - 32//化成小写
                list.append(smallChar)
            }
            
            //小写字母
            if (char > 64 && char < 91) {
                list.append(char) 
            }
            
            //数字
            if(char > 47 && char < 58) {//48-57
                list.append(char)
            }
        }
        
        //验证是否回文
        while list.count>0 {
            var first = list.first
            var last = list.last
            if(first == last){
                //删除最后的一个元素
                list.removeLast()
                if(list.count>0){
                    //删除最前的一个元素
                    list.removeFirst()
                }
                
            }else{
                return false
            }
            
        }
        
        return true
    }
}
