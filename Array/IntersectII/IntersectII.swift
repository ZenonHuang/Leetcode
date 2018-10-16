//Pass,340 ms
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var list = [Int]()
        var nums = nums2
        
        for item in nums1 {
            if(nums.contains(item)){
                list.append(item)
                
                for (index , obj) in nums.enumerated()
                {
                    if(obj==item){
                        nums.remove(at:index)
                        break
                    }
                }
                
            }
        }
        
        return list
    }
}
