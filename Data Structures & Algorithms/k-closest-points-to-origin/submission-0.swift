class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var points = points
        if points.count <= k {
            return points
        }

        // quickSort method, not heap yet
        quickSortHelper(&points, 0, points.count - 1)

        return Array(points[0..<k])
    }

    func quickSortHelper(_ points: inout [[Int]], _ start: Int, _ end: Int) {
        if (end - start + 1 <= 1) {
            return
        }

        var pivot = points[end]
        var left = start

        for i in start ..< end {
            if euclideanDistance(points[i], [0, 0]) < euclideanDistance(pivot, [0, 0]) {
                var temp = points[left]
                points[left] = points[i]
                points[i] = temp
                left += 1
            }
        }

        // swap pivot
        points[end] = points[left]
        points[left] = pivot

        quickSortHelper(&points, start, left - 1)
        quickSortHelper(&points, left + 1, end)
    }

    func euclideanDistance(_ point1: [Int], _ point2: [Int]) -> Double {
        let x1 = Double(point1[0])
        let y1 = Double(point1[1])

        let x2 = Double(point2[0])
        let y2 = Double(point2[1])

        return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))
    }
}