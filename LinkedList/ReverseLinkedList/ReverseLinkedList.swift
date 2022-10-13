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

class ReverseLinkedList {
//1.迭代法/双指针法 ，20ms
//时间O(n),其中 n 是链表的长度。需要遍历链表一次。空间 O(1)
    func reverseList(head: ListNode?) -> ListNode? {
        var temp: ListNode?
        var first = head
        
        while first != nil {
            let second = first!.next
            
            first!.next = temp
            
            temp = first
            first = second
        }
        
        return temp
    }
//2.1  递归法，16 ms
//时间O(n),其中 n 是链表的长度。需要对链表的每个节点进行反转操作。空间 O(n) 其中 n 是链表的长度。空间复杂度主要取决于递归调用的栈空间，最多为 n 层。
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let h = head, let next = h.next else {
            return head
        }
  
        let node = reverseList(next)
  
        next.next = h
        h.next = nil
  
        return node
    }
    
    //2.2 递归法,4 ms 。
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }

        var newHead = reverseList(head!.next)
        head?.next?.next = head
        head?.next = nil 
        return newHead
    }
}
