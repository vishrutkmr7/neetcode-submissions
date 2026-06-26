class Deque {

    class Node {
        var val: Int
        var prev: Node?
        var next: Node?

        init(_ val: Int) {
            self.val = val
        }
    }

    var head: Node?
    var tail: Node?

    init () {}

    func isEmpty() -> Bool {
        return head == nil
    }

    func append(_ value: Int) {
        let node = Node(value)
        if let t = tail {          // list has nodes
            t.next = node
            node.prev = t
            tail = node
        } else {                   // list is empty
            head = node
            tail = node
        }
    }

    func appendleft(_ value: Int) {
        let node = Node(value)
        if let h = head {
            node.next = h
            h.prev = node
            head = node
        } else {
            head = node
            tail = node
        }
    }

    func pop() -> Int {
        guard let t = tail else { return -1 }
        let val = t.val
        // shift tail
        tail = t.prev
        tail?.next = nil
        if tail == nil { head = nil } // empty
        return val
    }

    func popleft() -> Int {
        guard let h = head else { return -1 }
        let val = h.val
        head = h.next
        head?.prev = nil
        if head == nil { tail = nil }
        return val
    }
}
