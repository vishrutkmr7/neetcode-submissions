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
    func mergeSort(_ pairs: inout [Pair]) -> [Pair] {
        if pairs.isEmpty { return [] }
        mergeSortHelper(&pairs, 0, pairs.count - 1)
        return pairs
    }

    func mergeSortHelper(_ pairs: inout [Pair], _ start: Int, _ end: Int) -> [Pair] {
        if end - start + 1 <= 1 {
            return pairs
        }

        let mid: Int = (start + end) / 2

        mergeSortHelper(&pairs, start, mid)
        mergeSortHelper(&pairs, mid + 1, end)

        merge(&pairs, start, mid, end)
        return pairs
    }

    func merge(_ pairs: inout [Pair], _ start: Int, _ mid: Int, _ end: Int) {
        var temp: [Pair] = []
        temp.reserveCapacity(end - start + 1)

        var left = start
        var right = mid + 1

        while left <= mid && right <= end {
            if pairs[left].key <= pairs[right].key {
                temp.append(pairs[left])
                left += 1
            } else {
                temp.append(pairs[right])
                right += 1
            }
        }

        // cases where one end has more elements
        while left <= mid {
            temp.append(pairs[left])
            left += 1
        }

        while right <= end {
            temp.append(pairs[right])
            right += 1
        }

        for i in 0..<temp.count {
            pairs[start + i] = temp[i]
        }
    }
}
