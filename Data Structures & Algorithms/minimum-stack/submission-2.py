class MinStack:

    def __init__(self):
        self.arr = []
        self.minStack = []
        
    def push(self, val: int) -> None:
        self.arr.append(val)
        currentMin = self.minStack[-1] if self.minStack else math.inf
        self.minStack.append(min(val, currentMin))

    def pop(self) -> None:
        self.arr.pop()
        self.minStack.pop()

    def top(self) -> int:
        return self.arr[-1]

    def getMin(self) -> int:
        # return min(self.arr) not O(1)
        return self.minStack[-1]

        