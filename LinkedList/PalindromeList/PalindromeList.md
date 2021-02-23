## 回文链表



请判断一个链表是否为回文链表。

示例 1:

```
输入: 1->2
输出: false
```


示例 2:

```
输入: 1->2->2->1
输出: true
```

进阶：
你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题？



## 思路

由于前面做了一些题，马上联系到 **快慢指针** 方式 。

对于一个回文链表，快指针一直移动，等到前后节点相等，则开始比较。

还有一个核心就是在快指针移动时**反转链表**，为后面快慢指针一起移动，按顺序比较做准备。
