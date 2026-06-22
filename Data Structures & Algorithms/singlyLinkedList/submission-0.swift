class LinkedList {

    class LinkedNode {
        var val: Int
        var next: LinkedNode?

        init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }

    var head: LinkedNode?
    var tail: LinkedNode?

    init() {
        self.head = nil
        self.tail = nil
    }

    func get(_ index: Int) -> Int {
        var cur = head
        for _ in 0 ..< index {
            cur = cur?.next
        }
        return cur?.val ?? -1
    }

    func insertHead(_ value: Int) {
        let node = LinkedNode(value)
        node.next = self.head
        self.head = node
        if self.tail == nil {
            self.tail = node
        }
    }

    func insertTail(_ value: Int) {
        var node = LinkedNode(value)
        node.next = nil
        self.tail?.next = node
        self.tail = node
        
        if self.head == nil {
            self.head = node
        }
    }

    func remove(_ index: Int) -> Bool {
        guard head != nil else { return false }

        if index == 0 {
            head = head?.next
            if head == nil { tail = nil }
            return true
        }

        var cur = head
        for _ in 0 ..< index - 1 {
            cur = cur?.next
        }

        guard let target = cur?.next else { return false }
        cur?.next = target.next
        if target.next == nil { tail = cur }
        return true
    }

    func getValues() -> [Int] {
        var result: [Int] = []
        var cur = head
        while let node = cur {
            result.append(node.val)
            cur = node.next
        }
        return result
    }
}
