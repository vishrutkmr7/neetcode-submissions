class Solution:
    def subsets(self, nums: List[int]) -> List[List[int]]:
        res = []
        cur = []

        self.backtrack(0, nums, cur, res)
        return res
    
    def backtrack(self, index, nums, cur, res):
        if index == len(nums):
            res.append(cur.copy())
            return
        
        cur.append(nums[index])
        self.backtrack(index + 1, nums, cur, res)
        cur.pop()

        self.backtrack(index + 1, nums, cur, res)
        