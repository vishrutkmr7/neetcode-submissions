class FirstUnique:

    def __init__(self, nums: List[int]):
        self.queue = nums
        

    def showFirstUnique(self) -> int:
        counts = {}
        for element in self.queue:
            if element in counts:
                counts[element] += 1
            else:
                counts[element] = 1
        
        for element in self.queue:
            if counts[element] == 1:
                return element
        return -1
        

    def add(self, value: int) -> None:
        self.queue.append(value)