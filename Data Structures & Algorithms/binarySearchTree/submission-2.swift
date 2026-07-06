class TreeMap {

    class TreeNode {
        var key: Int
        var value: Int
        var left: TreeNode?
        var right: TreeNode?

        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }

    var root: TreeNode?

    init() {
        self.root = nil
    }

    func insert(_ key: Int, _ value: Int) {
        root = insertHelper(root, key, value)
    }

    private func insertHelper(_ node: TreeNode?, _ key: Int, _ value: Int) -> TreeNode? {
        guard let node = node else {
            return TreeNode(key, value)   // base case: found the empty spot
        }

        if key < node.key {
            node.left = insertHelper(node.left, key, value)
        } else if key > node.key {
            node.right = insertHelper(node.right, key, value)
        } else {
            node.value = value   // key already exists — overwrite value
        }

        return node
    }

    func get(_ key: Int) -> Int {
        return getHelper(root, key)
    }

    private func getHelper(_ node: TreeNode?, _ key: Int) -> Int {
        guard let node = node else {
            return -1
        }

        if key < node.key {
            return getHelper(node.left, key)
        } else if key > node.key {
            return getHelper(node.right, key)
        } else {
            return node.value
        }
    }

    func getMin() -> Int {
        guard var node = root else {
            return -1
        }

        while let left = node.left {
            node = left
        }

        return node.value
    }

    func getMax() -> Int {
        guard var node = root else {
            return -1
        }

        while let right = node.right {
            node = right
        }

        return node.value
    }

    func remove(_ key: Int) {
        root = removeHelper(root, key)
    }

    private func removeHelper(_ node: TreeNode?, _ key: Int) -> TreeNode? {
        guard let node = node else { return nil }

        if key > node.key {
            node.right = removeHelper(node.right, key)
        } else if key < node.key {
            node.left = removeHelper(node.left, key)
        } else {
            if node.left == nil {
                return node.right
            } else if node.right == nil {
                return node.left
            } else {
                let minNode = minValueNode(node.right)!
                node.key = minNode.key
                node.value = minNode.value
                node.right = removeHelper(node.right, minNode.key)
            }
        }
        return node
    }

    private func minValueNode(_ root: TreeNode?) -> TreeNode? {
        var curr = root
        while curr != nil && curr?.left != nil {
            curr = curr?.left
        }
        return curr
    }

    func getInorderKeys() -> [Int] {
        var keys: [Int] = []
        inorderHelper(root, &keys)
        return keys
    }

    private func inorderHelper(_ node: TreeNode?, _ keys: inout [Int]) {
        guard let node = node else { return }

        inorderHelper(node.left, &keys)   // 1. go left first
        keys.append(node.key)
        inorderHelper(node.right, &keys)  // 3. then go right
    }
}