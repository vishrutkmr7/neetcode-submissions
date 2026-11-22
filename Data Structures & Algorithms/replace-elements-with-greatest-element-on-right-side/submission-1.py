class Solution:
    def replaceElements(self, arr: List[int]) -> List[int]:
        if len(arr) == 1:
            return [-1]
        
        res = [] * len(arr)
        
        for i in range(len(arr) - 1):
            right_arr = arr[i + 1:len(arr)]
            res.append(max(right_arr))
        res.append(-1)

        return res
        