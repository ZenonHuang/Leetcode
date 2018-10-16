//Pass ，但是为长数组，时间超时
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var list = [Int]()
        
        for item in nums {
            if(!list.contains(item)){
                
                list.append(item)
            }else{
                
                return true
            }
            
        }
        
        return false
        
    }
}

//Pass ,48 ms
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        return nums.count > Set(nums).count
    }
}

