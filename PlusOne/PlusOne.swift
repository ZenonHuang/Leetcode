//pass
//大数组无法通过： [5,2,2,6,5,7,1,9,0,3,8,6,8,6,5,2,1,8,7,9,8,3,8,4,7,2,5,8,9]
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var lastNum = digits[(digits.count-1)]
        if(lastNum<9){
            
            var list = digits
            list[(list.count-1)] = lastNum+1
            
            return list
        }
        
        var result : Int = 0
        for index in 0..<digits.count {//.reversed()
            var num = digits[index]
            result = result*10 + num
        }
        
        result = result + 1
        
        var list = [Int]()
        while result>0 {
            var num = result % 10
            list.insert(num, at: 0)
            result = result / 10
        }
        
        print(result)
        print(list)
        return list
    }
}

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
