class Solution {

    func removeDuplicates(_ nums: inout [Int]) -> Int {
     
        //通过字典去重
        var dict : [Int : Int] = [ Int : Int]()
        for item in 0..<nums.count {
            let key = nums[item]
            dict[key] = key
        }
        
        nums = [Int](dict.keys)
       
        //冒泡排序
        let n = nums.count
        for i in 0..<n {
            for j in 0..<(n - 1 - i) {
               if nums[j] > nums[j + 1] {
                    nums.swapAt(j, j + 1)
               }
            }
        }
 
        return nums.count
    }
}
