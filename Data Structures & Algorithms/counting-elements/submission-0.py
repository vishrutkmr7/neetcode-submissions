class Solution:
    def countElements(self, arr: List[int]) -> int:
        res = 0
        for i in arr:
            if i + 1 in arr:
                res += 1
        
        return res
        