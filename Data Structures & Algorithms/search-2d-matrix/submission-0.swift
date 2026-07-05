class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rows = matrix.count
        let cols = matrix[0].count

        var left = 0
        var right = rows * cols - 1

        while left <= right {
            let mid = (left + right) / 2
            let row = mid / cols
            let col = mid % cols
            let val = matrix[row][col]

            if val == target {
                return true
            } else if val < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return false
    }
}
