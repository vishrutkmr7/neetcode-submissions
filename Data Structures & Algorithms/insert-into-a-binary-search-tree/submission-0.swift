/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if root == nil { return TreeNode(val) }

        if val > root!.val {
            root?.right = insertIntoBST(root?.right, val)
        } else if val < root!.val {
            root?.left = insertIntoBST(root?.left, val)
        }
        return root
    }
}
