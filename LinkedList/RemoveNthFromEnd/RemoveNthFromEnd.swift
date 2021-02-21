/**
 * Question Link: https://leetcode.com/problems/remove-nth-node-from-end-of-list/
 * Primary idea: Runner Tech
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    //思路：快慢指针法
    //快指针先走n步，之后快慢指针一起走count-n步，此时快指针为nil，慢指针到达倒数第n个节点

        //定义一个哑节点
        let dummy = ListNode(0)
        dummy.next = head
        var fast: ListNode? = dummy
        var slow: ListNode? = dummy
        
        //移动快指针
        for _ in 0..<n {
            fast = fast!.next
        }
        
        //快慢指针一起走
        while fast!.next != nil {
            slow = slow!.next
            fast = fast!.next
        }
        //慢指针到达节点，进行变换，next=next.next,变成新链表
        slow!.next = slow!.next!.next
        
        return dummy.next
    }
}
