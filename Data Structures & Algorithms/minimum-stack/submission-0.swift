class MinStack {

    var stack = [Int]()
    var minStack = [Int]()

    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
        let currentMin = minStack.last ?? Int.max
        minStack.append(min(val, currentMin))
    }

    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        return minStack.last!
    }
}
