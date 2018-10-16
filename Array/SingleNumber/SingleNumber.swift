//first ： 数组如果很长，超出时间限制
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        for index in 0..<nums.count {
            
            var item : Int   = nums[index]
            var isSame : Bool = true
            print("item \(item)")
            
            for subIndex in 0..<nums.count{
                
                if(subIndex==index){
                    continue
                }
                
                var subItem = nums[subIndex]
                
                isSame = (subItem==item)
                
                if(isSame){
                    print("subItem \(subItem)")
                    
                    break
                }
            }
            
            if(!isSame){
                print("return \(item) Same \(isSame)")
                
                return item
            }
        }
        
        
        return 0
        
    }
}

//Pass 750ms,优秀的在 100ms 内
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var mutNums = nums
        
        while mutNums.count>1
        {
            var num = mutNums[0]
            var isSame : Bool = false
            for subIndex in 1..<mutNums.count{
                if(num==mutNums[subIndex]){
                    isSame = true
                    mutNums.remove(at: subIndex)
                    mutNums.remove(at: 0)
                    break
                }
            }
            
            if(!isSame){
                return num
            }
        }
        
        return mutNums[0]
    }
}

//Pass 32ms,直接采用 异或 运算符，对数字进行比较
// (2^1^4^5^2^4^1) => ((2^2)^(1^1)^(4^4)^(5)) => (0^0^0^5) => 5

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result : Int = 0
        for item in nums {
            result = (result ^ item)
        }
        return result
        
    }
}
