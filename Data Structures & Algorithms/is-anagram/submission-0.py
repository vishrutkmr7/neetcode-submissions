class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        return self.keyString(s) == self.keyString(t)
        
    def keyString(self, s: str) -> str:
        sortedArr = sorted(s)
        res = ""
        for ch in sortedArr:
            res += ch
        return res
        