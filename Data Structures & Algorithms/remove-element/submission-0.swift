class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var count = 0
        for i in 0 ..< nums.count {
            if nums[i] != val {
                nums[count] = nums[i]
                count += 1
            }
        }

        return count
    }
}
