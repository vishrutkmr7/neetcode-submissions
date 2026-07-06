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
    var preorderIndex = 0
    var inorderIndexMap: [Int: Int] = [:]

    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        for (index, value) in inorder.enumerated() {
            inorderIndexMap[value] = index
        }
        return build(preorder, 0, inorder.count - 1)
    }

    func build(_ preorder: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        if left > right { return nil }

        let rootVal = preorder[preorderIndex]
        preorderIndex += 1

        let node = TreeNode(rootVal)
        let mid = inorderIndexMap[rootVal]!

        node.left = build(preorder, left, mid - 1)
        node.right = build(preorder, mid + 1, right)

        return node
    }
}
