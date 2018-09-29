

//Pass ,680 ms
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        if(nums.count==1){
            return [0,0]
        }
        
        var index : Int = 0
        
        while nums.count>index {
            
            for subIndex in (index+1)..<nums.count {
                if((nums[index]+nums[subIndex])==target){
                    return [index,subIndex]
                }
            }
            
            index=index+1
        }
        
        return [0,0]
    }
}


//Pass, 24 ms
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, i]
            }
            
            dict[num] = i
        }
        
        fatalError("No valid outputs")
    }
}
