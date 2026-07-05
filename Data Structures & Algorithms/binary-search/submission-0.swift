class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            var mid = left + (right - left) / 2

            if target > nums[mid] {
                left = mid + 1
            } else if target < nums[mid] {
                right = mid - 1
            } else {
                return mid
            }
        }

        return -1
    }
}
