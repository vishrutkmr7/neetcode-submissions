class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var ans: [Int] = Array(repeating: 0, count: 2 * nums.count)
        for i in 0 ..< nums.count {
            ans[i] = nums[i]
            ans[i + nums.count] = nums[i]
        }

        return ans
    }
}
