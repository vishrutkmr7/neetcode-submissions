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

    var total = 0
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        total = 0
        return dfs(root, targetSum)
    }

    private func dfs(_ node: TreeNode?, _ targetSum: Int) -> Bool {
        guard let node = node else {
            return false
        }

        total += node.val   // choose: add this node to the path

        if node.left == nil && node.right == nil {
            let found = total == targetSum
            total -= node.val   // backtrack before returning
            return found
        }

        if dfs(node.left, targetSum) {
            return true
        }
        if dfs(node.right, targetSum) {
            return true
        }

        total -= node.val   // backtrack: un-choose this node
        return false
    }
}
