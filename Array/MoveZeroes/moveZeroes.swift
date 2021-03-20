//Pass : 40 ms,击败 100%
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        if(nums.isEmpty) {
            return;
        }
        //两个指针i和j
        var j = 0;
        for i in 0..<nums.count {
            //当前元素!=0，就把其交换到左边，等于0的交换到右边
            if nums[i] != 0 {
                
                if (i > j) {// 避免了数组开头是非零元素的交换也就是阻止（i==j）时交换
                 nums[j] = nums[i];
                 nums[i] = 0;
                }
                j = j + 1
            }
        }

    }
}

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
