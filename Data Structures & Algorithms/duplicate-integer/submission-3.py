class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        # return len(nums) > len(set(nums))
        seen = {}
        for num in nums:
            if num not in seen.keys():
                seen[num] = 0
            else:
                return True
        
        return False
        