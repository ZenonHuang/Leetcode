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
    func isSymmetric(_ root: TreeNode?) -> Bool {
          return dfs(root?.left,root?.right)
    }
    func dfs(_ leftRoot: TreeNode?, _ rightRoot: TreeNode?) -> Bool {
        if (leftRoot == nil){
            return (rightRoot == nil)
        }
        guard rightRoot != nil else {
            return false
        }
        guard (leftRoot?.val == rightRoot?.val) else {
            return false
        }
        return dfs(leftRoot?.left, rightRoot?.right) && dfs(leftRoot?.right, rightRoot?.left)
    }
}