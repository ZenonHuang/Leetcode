/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(nums)
 * let ret_1: [Int] = obj.reset()
 * let ret_2: [Int] = obj.shuffle()
 */

 //412 ms ,时间击败 100%
 class Solution {
 
    let originalNums : [Int]
    init(_ nums: [Int]) {
         self.originalNums = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return originalNums
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
           var nums  = self.originalNums
           let count = self.originalNums.count
           var temp = 0
           for i in 0..<count {
               var change = Int.random(in:i..<count)
               temp = nums[i]
                nums[i] = nums[change]
                nums[change] = temp
           }
           return nums
    }
}

 //460 ms ,时间击败 91.30%
class Solution {
 
    let originalNums : [Int]
    init(_ nums: [Int]) {
         self.originalNums = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return originalNums
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
           var nums  = self.originalNums
           let count = self.originalNums.count
          
           for i in 0..<count {
               var change = Int.random(in:i..<count)
               let temp = nums[i]
                nums[i] = nums[change]
                nums[change] = temp
           }
           return nums
    }
}


 //484 ms ,时间击败 52.17%
class Solution {
 
    let originalNums : [Int]
    init(_ nums: [Int]) {
         self.originalNums = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return originalNums
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
           var nums  = self.originalNums
           let count = self.originalNums.count
          
           for i in 0..<count {
               var change = Int.random(in:i..<count)
               nums.swapAt(change,i)
           }
           return nums
    }
}

