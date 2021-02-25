

//击败 99.66%
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var nums = nums
        let count = (nums.count)
        if count < 2 {
            return nums[0]
        }
        var max = nums[0]
    
        var item = 0
        var pre  = 0
        var sum  = 0
        for i in 1..<count {


            item = nums[i]

            //假如一直累加， pre 为 max
            //假如中间断了一次，未进入 num[i] = sum 更新赋值.则pre为本来数组的 nums[i-1]，相当于重新进行连续累加
            pre  = nums[i-1]

            sum  = item + pre
            if sum > item {//代表 pre = sum-item>0,pre不为负数，对最大和有增益效果

                
                nums[i] = sum
                item = sum
            }

            if item > max {//更新 max 。如果 item 经过累加(或为新的一段连续和)更大，则更新max
                max = item
            }
        }

        return max
    }
}

[1,1,-1,-1,2,-2,2,2]

1.结束后：max=2,item = 2
2.结束后：max=2,item = -1
3.结束后：max=2,item = -1
4.结束后：max=2,item = 1
5,结束后：max=2,item = -2
6,技术后: max=2,item = 2
7,结束后: max=4,itme = 4