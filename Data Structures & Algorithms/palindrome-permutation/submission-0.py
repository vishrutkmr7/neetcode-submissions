class Solution:
    def canPermutePalindrome(self, s: str) -> bool:
        stack = []
        for letter in s:
            if letter in stack:
                stack.remove(letter)
            else:
                stack.append(letter)
        
        return len(stack) <= 1
        