class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var high = piles.max()!
        var low = 1

        while low < high {
            var mid = (low + high) / 2

            if hoursNeeded(piles, mid) <= h {
                high = mid
            } else {
                low = mid + 1
            }
        }
        return low
    }

    func hoursNeeded(_ piles: [Int], _ k: Int) -> Int {
        var hours = 0
        for pile in piles {
            hours += (pile + k - 1) / k
        }
        return hours
    }
}
