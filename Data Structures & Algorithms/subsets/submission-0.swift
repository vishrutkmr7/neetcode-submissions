class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var current: [Int] = []

        backtrack(0, nums, &current, &result)
        return result
    }

    private func backtrack(_ index: Int, _ nums: [Int], _ current: inout [Int], _ result: inout [[Int]]) {
        if index == nums.count {
            result.append(current)
            return
        }

        // Choice 1: include nums[index]
        current.append(nums[index])
        backtrack(index + 1, nums, &current, &result)
        current.removeLast()   // backtrack — undo the choice

        // Choice 2: exclude nums[index]
        backtrack(index + 1, nums, &current, &result)
    }
}
