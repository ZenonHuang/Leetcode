# Two Sum


题目如下:

Given an array of integers, return **indices** of the two numbers such that they add up to a specific target.

You may assume that each input would have ***exactly*** one solution.

**Example:**

```
Given nums = [2, 7, 11, 15], target = 9,

Because nums[**0**] + nums[**1**] = 2 + 7 = 9,
return [**0**, **1**].
```

**UPDATE (2016/2/13):**
The return format had been changed to **zero-based** indices. Please read the above updated description carefully.


# 我的答案

Swift

```
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for index in 0..<nums.count {
          let a = index + 1
          for index2 in a..<nums.count {
              var sum = nums[index] + nums[index2]
              if sum == target {
                  return [index ,index2 ]
              }
          }   
        }
        return [0,0]
    }
}
```

# 更优的答案

```
struct Medium_001_Two_Sum {
    // t = O(N), s = O(N)
    static func twoSum(numbers: [Int], target: Int) -> [Int] {
        var hashMap = [Int: Int]()
        var result = [Int]()

        for i in 0..<numbers.count {
            let numberToFind: Int = target - numbers[i]
            if let numberToFindIndex = hashMap[numberToFind] {
                result.append(numberToFindIndex + 1)
                result.append(i + 1)
                return result
            } else {
                hashMap[numbers[i]] = i
            }
        }
        return result
    }
}
```

