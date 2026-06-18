class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack = [Int]()

        for op in operations {
            switch op {
                case "+":
                    let last = stack[stack.count - 1]
                    let secondLast = stack[stack.count - 2]
                    stack.append(last + secondLast)
                case "D":
                    if let last = stack.last {
                        stack.append(last * 2)
                    }
                case "C":
                    _ = stack.popLast()
                default:
                    if let val = Int(op) {
                        stack.append(val)
                    }
                }
            }
            
            return stack.reduce(0, +)
    }
}
