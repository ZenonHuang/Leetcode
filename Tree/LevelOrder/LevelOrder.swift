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
        if root == nil {//判空
            return []
        }
        //返回的而为数组
        var result = [[Int]]()

        var nextLevel = [TreeNode]()
        //用于存储每一个遍历层次的节点
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
            result.append(temp) //获得一层的结果

            //循环完成一层，将下一层的赋值给 thisLevel
            thisLevel = nextLevel
            //清空
            temp.removeAll()
            nextLevel.removeAll()
        }
        return result
    }
}