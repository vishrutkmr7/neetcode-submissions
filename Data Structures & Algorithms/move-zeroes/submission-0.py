class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        non0 = []
        for num in nums:
            if num != 0:
                non0.append(num)

        for i in range(len(nums)):
            if i < len(non0):
                nums[i] = non0[i]
            else:
                nums[i] = 0


        