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
    var result: [Int] = []
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil { return [] }
        inorder(root)
        return result
    }

    func inorder (_ root: TreeNode?) {
        if let node = root {
            inorder(node.left)
            result.append(node.val)
            inorder(node.right)
        }
    }
}
