class Solution:
    def largestUniqueNumber(self, nums: List[int]) -> int:
        # counts = {}
        # for num in nums:
        #     if num in counts.keys():
        #         counts[num] += 1
        #     else:
        #         counts[num] = 1

        singles = []

        for num in nums:
            if num in singles:
                singles.remove(num)
            else:
                singles.append(num)

        if len(singles) >= 1:
            return max(singles)
        else:
            return -1
        