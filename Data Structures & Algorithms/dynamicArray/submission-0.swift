class DynamicArray {

    var arr: [Int] = []
    var capacity: Int

    init(_ capacity: Int) {
        self.capacity = capacity
    }

    func get(_ i: Int) -> Int {
        return arr[i]
    }

    func set(_ i: Int, _ n: Int) {
        arr[i] = n
    }

    func pushback(_ n: Int) {
        if arr.count == capacity {
            resize()
        }
        arr.append(n)
    }

    func popback() -> Int {
        return arr.removeLast()
    }

    private func resize() {
        capacity *= 2
    }

    func getSize() -> Int {
        return arr.count
    }

    func getCapacity() -> Int {
        return capacity
    }
}
