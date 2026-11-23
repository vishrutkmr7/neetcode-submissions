class Solution:
    def sortColors(self, nums: List[int]) -> None:
        """DefaultDict, 
        Do not return anything, modify nums in-place instead.
        """
        counter = defaultdict(int)
        for num in nums:
            counter[num] += 1

        i = 0

        for n in range(0, 3):
            if counter[n] > 0:
                for _ in range(0, counter[n]):
                    nums[i] = n
                    i += 1
