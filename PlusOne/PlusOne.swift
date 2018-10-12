//Pass: 24ms
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var list = digits
        
        var lastNum = list[(list.count-1)]
        if(lastNum<9){
            
            list[(list.count-1)] = lastNum+1
            return list
        }
        
        for index in (0..<list.count).reversed() {
            print(index)
            var num = list[index]
            num = num+1
            if(num<10){
                list[index]=num
                return list
            }
            
            
            if(num==10){
                list[index] = 0
                if(index==0){
                    list.insert(1, at: 0)
                }
            }
            
            
            
        }
        
        return list
    }
}
