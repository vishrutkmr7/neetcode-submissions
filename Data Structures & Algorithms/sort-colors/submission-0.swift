class Solution {
    func sortColors(_ nums: inout [Int]) {
        var counts: [Int: Int] = [0: 0, 1: 0, 2: 0]

        for i in 0 ..< nums.count {
            counts[nums[i], default: 0] += 1
        }

        var i = 0
        for n in 0 ... 2 {
            let countVal = counts[n, default: 0]
            if countVal > 0 {
                for _ in 1 ... countVal {
                    nums[i] = n
                    i += 1
                }
            }
        }
    }
}

