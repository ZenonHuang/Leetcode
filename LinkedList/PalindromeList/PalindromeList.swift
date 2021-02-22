/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        //一是运用快慢指针的方式，一前一后的对比。
        //二是在移动过程中，将慢指针的链表做反转，联系之前的迭代法反转链表
        var slow : ListNode? = head
        var fast : ListNode? = head
        var dummy: ListNode? = nil
        
        // reverse first half
        while fast != nil && fast!.next != nil {
            fast = fast!.next!.next
            
            let nextNode = slow!.next
            
            slow!.next = dummy
            
            dummy = slow
            slow = nextNode
        }
        
        // go to the starting point when length of list is odd
        if fast != nil {
            if slow == nil {
                return true
            }
            slow = slow!.next
        }
        
        // compare reversed first and second half
        while slow != nil {
            if slow!.val != dummy!.val {
                return false
            } else {
                slow = slow!.next
                dummy = dummy!.next
            }
        }
        
        return true
    }
}