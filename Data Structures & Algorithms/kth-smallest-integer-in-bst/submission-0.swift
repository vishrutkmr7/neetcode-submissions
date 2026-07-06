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
    var nodes: [Int] = []
    var counter: Int = 0
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        // inorder traversal k times?
        if root == nil { return -1 }
        inorder(root, k)
        return nodes[k - 1]
    }

    func inorder(_ root: TreeNode?, _ limit: Int) {
        if let node = root {
            if counter <= limit {
                inorder(node.left, limit)
                nodes.append(node.val)
                counter += 1
                inorder(node.right, limit)
            }
        }
    }
}