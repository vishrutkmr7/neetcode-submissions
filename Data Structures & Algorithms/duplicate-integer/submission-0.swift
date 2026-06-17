class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        return nums.count != Set(nums).count
    }
}
