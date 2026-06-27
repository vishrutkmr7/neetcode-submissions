class Solution {
    func insertionSort(_ pairs: inout [Pair]) -> [[Pair]] {
        var output: [[Pair]] = []

        if pairs.isEmpty { return [] }

        output.append(Array(pairs))

        for i in 1 ..< pairs.count {
            var j = i - 1
            while j >= 0 && pairs[j + 1].key < pairs[j].key {
                pairs.swapAt(j + 1, j)
                j -= 1
            }
            output.append(Array(pairs))
        }

        return output
    }
}