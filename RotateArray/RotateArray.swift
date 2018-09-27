class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let numsCount = nums.count
        
        let moveLength = (k>numsCount) ? (k % numsCount) : k
        if(moveLength==0){
            return
        }
        
        var list = [Int](repeating: 0, count: numsCount)
        
        for index in 0..<numsCount {
            var moveIndex = index+moveLength
            
            var newIndex  = moveIndex<numsCount ? moveIndex : (moveIndex - numsCount)
            
            list[newIndex] = nums[index]
        }
        
        nums = list
    }
}
