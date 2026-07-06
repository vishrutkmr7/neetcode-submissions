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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var queue: [TreeNode] = []
        var result: [[Int]] = []

        if root != nil {
            queue.append(root!)
        }
        while queue.count > 0 {
            var currentLevel: [Int] = []

            for _ in 0..<queue.count {
                let curr = queue.removeFirst()
                currentLevel.append(curr.val)

                if let left = curr.left {
                    queue.append(left)
                }
                if let right = curr.right {
                    queue.append(right)
                }
            }

            result.append(currentLevel)
        }
        return result
    }
}
