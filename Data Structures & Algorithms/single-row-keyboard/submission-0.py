class Solution:
    def calculateTime(self, keyboard: str, word: str) -> int:
        keyboardMap = {}
        for index, letter in enumerate(keyboard):
            keyboardMap[letter] = index

        res = 0
        cur = 0
        for letter in word:
            res += abs(cur - keyboardMap[letter])
            cur = keyboardMap[letter]
        
        return res
