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
    func isBalanced(_ root: TreeNode?) -> Bool {
        return height(root) != -1
    }

    func height(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }

        let leftHeight = height(node.left)
        if leftHeight == -1 { return -1 }   // left side already failed

        let rightHeight = height(node.right)
        if rightHeight == -1 { return -1 }  // right side already failed

        if abs(leftHeight - rightHeight) > 1 {
            return -1   // this node itself is unbalanced
        }

        return max(leftHeight, rightHeight) + 1
    }
}
