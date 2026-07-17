class Solution:
    def largestUniqueNumber(self, nums: List[int]) -> int:
        counts = {}
        for num in nums:
            if num in counts.keys():
                counts[num] += 1
            else:
                counts[num] = 1
        res = -1
        for num, count in counts.items():
            if count == 1:
                res = max(res, num)
        
        return res
        