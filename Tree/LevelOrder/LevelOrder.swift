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
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil {
            return []
        }
        var result = [[Int]]()
        var nextLevel = [TreeNode]()
        var thisLevel: [TreeNode] = [root!]
        while thisLevel.count > 0 {
            var temp = [Int]()
            for node in thisLevel {
                temp.append(node.val)
                if let left = node.left {
                    nextLevel.append(left)
                }
                if let right = node.right {
                    nextLevel.append(right)
                }
            }
            result.append(temp)
            thisLevel = nextLevel
            temp.removeAll()
            nextLevel.removeAll()
        }
        return result
    }
}