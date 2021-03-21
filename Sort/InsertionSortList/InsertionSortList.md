# 对链表进行插入排序

从第一个元素开始，该链表可以被认为已经部分排序。
每次迭代时，从输入数据中移除一个元素，并原地将其插入到已排好序的链表中。

 

插入排序算法：

- 插入排序是迭代的，每次只移动一个元素，直到所有元素可以形成一个有序的输出列表。
- 每次迭代中，插入排序只从输入数据中移除一个待排序的元素，找到它在序列中适当的位置，并将其插入。
- 重复直到所有输入数据插入完为止。


示例 1：

```
输入: 4->2->1->3
输出: 1->2->3->4
```


示例 2：

```
输入: -1->5->3->4->0
输出: -1->0->3->4->5
```




## 解法

如题，直接使用插入排序。

用 swift 的可选值很麻烦... OC 又不能拿来写 leetcode...为了快速啊，直接 java 版本的先提交通过了.

它的工作原理是通过构建有序序列，对于未排序数据，在已排序序列中从后向前扫描，找到相应位置并插入。

实现主要在于插入排序的核心：

- 先从小到大遍历比较，遇到顺序不对的
- 合适的对象位置，**先移除，再插入已排序部分**



```java
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode insertionSortList(ListNode head) {
        if (head == null) return null;
    // 创建哑结点，用于将在 head 前插入结点转换为在哑结点后插入，统一处理，更方便
    ListNode dummyHead = new ListNode(0);
    dummyHead.next = head;
    // 记录已排序完成的结点末尾
    ListNode lastSorted = head;
    // 当前需要新插入的结点
    ListNode current = head.next;
    while (current != null) {
        if (lastSorted.val <= current.val) {
            // 新插入的值正好是最大值，直接插入链表末尾
            lastSorted = lastSorted.next;
        } else {
            // 从头开始寻找插入位置
            ListNode previous = dummyHead;
            while (previous.next.val <= current.val) {
                previous = previous.next;
            }
            
            lastSorted.next = current.next;//相当于把 current 先移除
            current.next = previous.next;//将 current.next 赋值，和插入位置的后面连接
            previous.next = current;// 和插入位置的前面连接,完成新结点插入
        }
        // 更新新结点,为排序链表的下一个节点
        current = lastSorted.next;
    }
    return dummyHead.next;
    }
}
```

