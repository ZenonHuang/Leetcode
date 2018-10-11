//Pass : 164 ms
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        
        let countNum = nums.count
        var index : Int = 0
        
        var zeroIndex : Int = 0
        var haveZero : Bool = false
        
        while index < countNum
        {
            var num = nums[index]
            if(num==0){
                if(!haveZero){
                    
                    haveZero = true
                    zeroIndex = index
                }
                
            }else{
                
                if(haveZero){
                    
                    (nums[zeroIndex],nums[index]) = (nums[index],nums[zeroIndex])
                    haveZero = false
                    index = zeroIndex
                }
                
            }
            
            index = index + 1
        }
        
        
        
    }
}
