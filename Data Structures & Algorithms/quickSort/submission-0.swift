// Definition for a pair
// class Pair {
//     var key: Int
//     var value: String
//     init(_ key: Int, _ value: String) {
//         self.key = key
//         self.value = value
//     }
// }

class Solution {
    func quickSort(_ pairs: inout [Pair]) -> [Pair] {
        if pairs.count == 0 { return [] }
        quickSortHelper(&pairs, 0, pairs.count - 1)
        return pairs
    }

    func quickSortHelper(_ pairs: inout [Pair], _ start: Int, _ end: Int) -> [Pair] {
        if end - start + 1 <= 1 {
            return pairs
        }
        var pivot = pairs[end]
        var left = start

        for i in start ... end - 1 {
            if pairs[i].key < pivot.key {
                var temp = pairs[left]
                pairs[left] = pairs[i]
                pairs[i] = temp
                left += 1
            }
        }

        //swap pivots
        pairs[end] = pairs[left]
        pairs[left] = pivot

        quickSortHelper(&pairs, start, left - 1)
        quickSortHelper(&pairs, left + 1, end)

        return pairs
    }
}
