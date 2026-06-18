class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var maxCount = 0

        for num in nums {
            count = num == 1 ? count + 1 : 0
            maxCount = max(maxCount, count)
        }

        return maxCount
    }
}
