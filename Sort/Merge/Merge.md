## 合并排序的数组

给定两个排序后的数组 A 和 B，其中 A 的末端有足够的缓冲空间容纳 B。 编写一个方法，将 B 合并入 A 并排序。

初始化 A 和 B 的元素数量分别为 m 和 n。

示例:

```
输入:
A = [1,2,3,0,0,0], m = 3
B = [2,5,6],       n = 3

输出: [1,2,2,3,5,6]
```

说明:

- A.length == n + m




## 解法

思路比较简单:

- 合并 2 个数组
- 合并后的数组选择排序

```swift
class Solution {
    func merge(_ A: inout [Int], _ m: Int, _ B: [Int], _ n: Int) {
       if n == 0 {
           return
       }
       if m == 0 {
           A = B
           return
       }
       //合并数组
       let count = m + n
       for i in m..<count {
           A[i] = B[i-m]
       } 
       //选择排序
       for i in 0..<count {
            var minIndex = i
            var startIndex = i + 1
            
            for j in startIndex..<count {
                var item = A[j]
                var minItem = A[minIndex]
                if item < minItem  {
                    minIndex = j
                }
            }
            
            //小元素交换到左边
            A.swapAt(i, minIndex)
        }

    }
}
```

