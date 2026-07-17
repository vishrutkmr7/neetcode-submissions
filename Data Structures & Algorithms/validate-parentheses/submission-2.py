class Solution:
    def isValid(self, s: str) -> bool:
        opens = ["(", "{", "["]
        closes = [")", "}", "]"]
        stack = []

        for char in s:
            if char in opens:
                stack.append(char)
            else:
                if not stack or opens[closes.index(char)] != stack.pop():
                    return False
        
        return len(stack) == 0