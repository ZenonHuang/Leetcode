class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var newNums  = [Int]()
        var newNums1 = Array(nums1[0..<m])
        var newNums2 = nums2

        while !newNums1.isEmpty && !newNums2.isEmpty {//有一个数组为空则停止循环
            //填充内容
            var num1 = newNums1[0]
            var num2 = newNums2[0]

            if num1 < num2 {
               newNums.append(num1)
               newNums1.removeFirst()
            }else if num1 > num2{
               newNums.append(num2)
               newNums2.removeFirst()
            }else{//等于
               newNums.append(num1)
               newNums.append(num2) 
               newNums1.removeFirst()
               newNums2.removeFirst() 
            }
           
        }

        if  !newNums1.isEmpty {
            newNums = newNums + newNums1
        }
        if  !newNums2.isEmpty {
            newNums = newNums + newNums2
        }

        nums1 = newNums
    }
}