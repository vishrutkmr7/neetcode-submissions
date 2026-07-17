class RandomizedSet:

    def __init__(self):
        self.nums = []
        self.randomSet = {}
        

    def insert(self, val: int) -> bool:
        if val in self.randomSet:
            return False
        else:
            self.randomSet[val] = len(self.nums)
            self.nums.append(val)
            return True
        

    def remove(self, val: int) -> bool:
        if val in self.randomSet:
            idx = self.randomSet[val]
            last_val = self.nums[-1]
            self.nums[idx] = last_val
            self.randomSet[last_val] = idx
            self.nums.pop()
            del self.randomSet[val]
            return True
        else:
            return False
        

    def getRandom(self) -> int:
        return random.choice(self.nums)