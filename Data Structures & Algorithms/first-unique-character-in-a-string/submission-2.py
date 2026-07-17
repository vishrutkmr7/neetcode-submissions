class Solution:
    def firstUniqChar(self, s: str) -> int:
        seenMap = {}

        for index, ch in enumerate(s):
            if ch in seenMap:
                seenMap[ch].append(index)
            else:
                seenMap[ch] = [index]

        for index, ch in enumerate(s):
            if len(seenMap[ch]) == 1:
                return index
        
        return -1


        
