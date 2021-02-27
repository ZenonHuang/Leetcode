#### 杨辉三角

给定一个非负整数 *numRows，*生成杨辉三角的前 *numRows* 行。





![](https://zenon-1255868537.cos.ap-guangzhou.myqcloud.com/blogPicture/20210228075109.gif?imageMogr2/thumbnail/!50p)



 

在杨辉三角中，每个数是它左上方和右上方的数的和。

示例:

```
输入: 5
输出:
[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]
```



## 思路

- 根据杨辉三角的定义，逐行添加数组。

根据上一行数组的值，来对当前行，进行数值填充：

```swift
for index in 1..<listCount {       
      list[index] = preList[index] + preList[index - 1]            
}
```



