class MyStack {

    var queue: [Int] = []

    init() {

    }

    func push(_ x: Int) {
        queue.append(x)
        // rotate
        for i in 0 ..< queue.count - 1 {
            queue.append(queue.removeFirst())
        }
    }

    func pop() -> Int {
        return queue.removeFirst()
    }

    func top() -> Int {
        return queue.first!
    }

    func empty() -> Bool {
        return queue.count == 0
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.top()
 * let param_4 = obj.empty()
 */
