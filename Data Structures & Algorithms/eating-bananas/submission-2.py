class Solution:
    def minEatingSpeed(self, piles: List[int], h: int) -> int:
        high = max(piles)
        low = 1

        while low < high:
            mid = (low + high) // 2

            if self.hours(piles, mid) <= h:
                high = mid
            else:
                low = mid + 1
        
        return low

    def hours(self, piles, k):
        res = 0
        for pile in piles:
            res += (pile + k - 1) // k
        return res
        