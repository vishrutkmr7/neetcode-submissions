class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.isEmpty {
            return []
        }

        var hashMap: [Int: Int] = [:]
        for i in 0 ..< nums.count {
            hashMap[nums[i]] = i
        }


        for i in 0 ..< nums.count {
            let difference = target - nums[i]
            if let index = hashMap[difference], index != i {
                return i < index ? [i, index] : [index, i]
            }
        }

        return []
    }
}
