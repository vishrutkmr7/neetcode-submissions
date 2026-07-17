class Solution:
    def smallestCommonElement(self, mat: List[List[int]]) -> int:
        res = {}

        for rows in mat:
            for element in rows:
                if element not in res.keys():
                    res[element] = 1
                else:
                    res[element] += 1

        for key, value in res.items():
            if value == len(mat):
                return key
        
        return -1