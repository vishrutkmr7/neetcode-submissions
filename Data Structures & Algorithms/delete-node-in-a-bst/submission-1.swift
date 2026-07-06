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
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        if root == nil { return nil }

        if key > root!.val {
            root?.right = deleteNode(root?.right, key)
        } else if key < root!.val {
            root?.left = deleteNode(root?.left, key)
        } else {
            if root!.left == nil {
                return root?.right
            } else if root!.right == nil {
                return root?.left
            } else {
                let minNode = minValueNode(root?.right)
                root?.val = minNode!.val
                root?.right = deleteNode(root?.right, minNode!.val)
            }
        }
        return root
    }

    func minValueNode(_ root: TreeNode?) -> TreeNode? {
        var curr = root
        while curr != nil && curr?.left != nil {
            curr = curr?.left
        }
        return curr
    }
}