### 排序数组

给你一个整数数组 nums，请你将该数组升序排列。

```
示例 1：

输入：nums = [5,2,3,1]
输出：[1,2,3,5]

示例 2：

输入：nums = [5,1,1,2,0,0]
输出：[0,0,1,1,2,5]
```


提示：

```
1 <= nums.length <= 50000
-50000 <= nums[i] <= 50000
```

## 快速排序解法

快速排序算法的基本思想是：

- 从数组中取出一个数，称之为基数（pivot）
- 遍历数组，将比基数大的数字放到它的右边，比基数小的数字放到它的左边。遍历完成后，数组被分成了左右两个区域
- 将左右两个区域视为两个数组，重复前两个步骤，直到排序完成

对于 [leetcode 官方-快速排序](https://leetcode-cn.com/leetbook/read/sort-algorithms/eul7hm/) 的讲解说得很详细很好，推荐...

快排应该要反复练习几次，光看很难记得住，不如冒泡/选择/插入等排序算法直观好理解。

主要思路还是分治的思想。

```swift
   func sortArray(_ nums: [Int]) -> [Int] {
        return quickSort(nums)
    }
// 6.快速排序
    func quickSort(_ nums: [Int]) -> [Int] {
        if nums.count < 2 { return nums }
        let count = nums.count
        var array = nums
        quick(&array, 0, count)
        return array
    } // 快速排序，时间复杂度：O（n * logn），空间复杂度：O（logn）

    func quick(_ nums: inout [Int], _ begin: Int, _ end: Int) {
        if end - begin < 2 { return }
        let idx = pivotIndex(&nums, begin, end)
        quick(&nums, begin, idx)
        quick(&nums, idx+1, end) 
    } // 逐渐将每一个元素转换为轴点元素

    func pivotIndex(_ nums: inout [Int], _ begin: Int, _ end: Int) -> Int {
        var l = begin
        var r = end - 1
        let v = nums[begin]
        while l < r {
            while l < r {
                if nums[r] > v {
                    r -= 1
                } else {
                    nums[l] = nums[r]
                    l += 1
                    break
                }
            }
            while l < r {
                if nums[l] < v {
                    l += 1
                } else {
                    nums[r] = nums[l]
                    r -= 1
                    break
                }
            }
        }
        nums[l] = v
        return l
    } // 返回轴点元素的索引，将小于轴点元素的元素放在左边，否则放右边

```



