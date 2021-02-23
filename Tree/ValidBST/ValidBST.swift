/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
 
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard root != nil else { return true }
        var stack = [TreeNode](), node = root, pre: TreeNode? = nil
        while node != nil || !stack.isEmpty {
            while node != nil {
                stack.append(node!)
                node = node!.left
            }
            node = stack.removeLast()
            if pre != nil && pre!.val >= node!.val {
                return false;
            }
            pre = node
            node = node!.right
        }
        return true
    }
}