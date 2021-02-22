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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var node = dummy
        
        var l1 = l1
        var l2 = l2
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                node.next = l1
                //l1 的长度减少，相当于删除了头节点
                l1 = l1!.next
            } else {
                node.next = l2
                //l2 的长度减少，相当于删除了头节点
                l2 = l2!.next
            }

            //移动 node ,用于有序值插入链表尾部
            node = node.next!
        }
        
        //??,合并控制运算符，（a??b） 相当于（ a != nil ? a! : b）
        node.next = l1 ?? l2
        
        return dummy.next
    }
}