# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

class Solution:
    def __init__(self) -> None:
        self.nodes = []
        self.counter = 0

    def kthSmallest(self, root: Optional[TreeNode], k: int) -> int:
        if root is None:
            return -1
        self.inorderLimited(root, k)
        return self.nodes[k - 1]
    
    def inorderLimited(self, root, limit):
        if root is None or self.counter >= limit:
            return
        
        self.inorderLimited(root.left, limit)
        if self.counter >= limit:
            return
        self.nodes.append(root.val)
        self.counter += 1

        if self.counter >= limit:
            return
        self.inorderLimited(root.right, limit)