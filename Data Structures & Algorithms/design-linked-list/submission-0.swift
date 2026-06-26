class MyLinkedList {

    class LinkedNode {
        var val: Int
        var prev: LinkedNode?
        var next: LinkedNode?

        init(_ val: Int) {
            self.val = val
            self.prev = nil
            self.next = nil
        }
    }

    var head: LinkedNode?
    var tail: LinkedNode?
    var size: Int = 0

    init() {
        self.head = nil
        self.tail = nil
    }

    func get(_ index: Int) -> Int {
        if index < 0 || index >= size { return -1 }
        var cur = head
        for _ in 0 ..< index {
            cur = cur?.next
        }
        return cur?.val ?? -1
    }

    func addAtHead(_ val: Int) {
        let node = LinkedNode(val)
        node.next = self.head
        self.head?.prev = node      // update old head's prev
        self.head = node
        if self.tail == nil {
            self.tail = node
        }
        size += 1
    }

    func addAtTail(_ val: Int) {
        if size == 0 { return addAtHead(val) }
        let node = LinkedNode(val)
        node.prev = self.tail       // new node points back to old tail
        self.tail?.next = node      // old tail points forward to new node
        self.tail = node            // update tail
        size += 1
    }

    func addAtIndex(_ index: Int, _ val: Int) {
        if index > size { return }          // out of bounds — don't insert
        if index <= 0 { return addAtHead(val) }
        if index == size { return addAtTail(val) }

        // walk to the node currently AT index
        var cur = head
        for _ in 0 ..< index {
            cur = cur?.next
        }

        // insert new node BEFORE cur
        let node = LinkedNode(val)
        node.next = cur
        node.prev = cur?.prev
        cur?.prev?.next = node      // node behind cur now points to new node
        cur?.prev = node            // cur now points back to new node
        size += 1
    }

    func deleteAtIndex(_ index: Int) {
        if index < 0 || index >= size { return }

        // walk to the node AT index
        var cur = head
        for _ in 0 ..< index {
            cur = cur?.next
        }

        // special cases for head/tail
        if cur === head { head = cur?.next }
        if cur === tail { tail = cur?.prev }

        // bypass cur
        cur?.prev?.next = cur?.next
        cur?.next?.prev = cur?.prev
        size -= 1
    }
}