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



## 解法

很迷... 在 leetcode 的排序专题里，选择排序的题目....但使用**选择排序**的方法，直接显示超时。

最后直接用:

```swift
 var sortList = nums.sorted()
```



先把选择写下来吧..

### 选择排序

```
func sortArray(_ nums: [Int]) -> [Int] {
        var sortList = nums
        let count = sortList.count 
        for i in 0..<count {
            var minIndex = i
            var startIndex = i + 1
            
            for j in startIndex..<count {
                var item = sortList[j]
                var minItem = sortList[minIndex]
                if item < minItem  {
                    minIndex = j
                }
            }
            
            //小元素交换到右边
            sortList.swapAt(i, minIndex)
            
        }
        return sortList
    }
```







### 二元选择排序

```swift
func sortArray(_ nums: [Int]) -> [Int] {
        var sortList = nums
        let count = sortList.count/2
        for i in 0..<count {
            var minIndex = i
            var maxIndex = i
            var startIndex = i + 1
            let endIndex = (sortList.count - i)
            for j in startIndex..<endIndex {
                var item = sortList[j]
                var minItem = sortList[minIndex]
                var maxItem = sortList[maxIndex]
                if item < minItem  {
                    minIndex = j
                }
                if item > maxItem {
                    maxIndex = j
                }
            }
             // 如果 minIndex 和 maxIndex 都相等，那么他们必定都等于 i，且后面的所有数字都与 sortList[i] 相等，此时已经排序完成
            if maxIndex == minIndex {
                break;
            }
            //小元素交换到右边
            sortList.swapAt(i, minIndex)
            if maxIndex == i {// 如果最大值的下标刚好是 i，由于 sortList[i] 和 sortList[minIndex] 实际的值已经交换了，要更新 maxIndex 的值。
                maxIndex = minIndex;
            } 
            sortList.swapAt(sortList.count - 1 - i, maxIndex)
        }
        return sortList
    }
```



