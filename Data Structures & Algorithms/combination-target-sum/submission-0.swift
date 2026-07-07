class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        var current: [Int] = []
        
        backtrack(nums, &current, 0, 0, target, &result)
        return result
    }

    private func backtrack(_ nums: [Int], _ current: inout [Int], _ index: Int, _ sum: Int, _ target: Int, _ result: inout [[Int]]) {
        if sum == target {
            result.append(current)
            return
        }
        if sum > target || index == nums.count {
            return
        }

        // Choice 1: pick nums[index] again — stay at same index
        current.append(nums[index])
        backtrack(nums, &current, index, sum + nums[index], target, &result)
        current.removeLast()   // backtrack

        // Choice 2: skip nums[index] — move to next index
        backtrack(nums, &current, index + 1, sum, target, &result)
    }
}
