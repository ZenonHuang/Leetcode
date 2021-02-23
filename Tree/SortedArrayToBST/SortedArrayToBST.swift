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
    
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
       if nums.isEmpty { return nil }
       return createTree(nums, 0, nums.count - 1)  
    }

    func createTree(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        
        guard left <= right else { //递归结束条件
            return nil 
        }
        //通过传入左右区间，取中间节点
        //不直接left+right,有溢出风险
        let mid = left + (right-left) / 2
        let node = TreeNode(nums[mid])

        //再递归处理左右节点
        node.left  = createTree(nums, left, mid - 1)
        node.right = createTree(nums, mid + 1, right)
        return node
    }
}