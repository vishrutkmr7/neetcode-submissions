class Node:

    def __init__(self, key, val) -> None:
        self.key, self.val = key, val
        self.prev = self.next = None

class LRUCache:

    def __init__(self, capacity: int):
        self.cap = capacity
        self.cache = {}

        self.left, self.right = Node(0, 0), Node(0,0)
        self.left.next, self.right.prev = self.right, self.left
    
    def removeFromLL(self, node):
        prev, next = node.prev, node.next
        prev.next, next.prev = next, prev
    
    def insertintoLL(self, node):
        prev, next = self.right.prev, self.right
        prev.next = next.prev = node
        node.next, node.prev = next, prev

    def get(self, key: int) -> int:
        if key in self.cache:
            self.removeFromLL(self.cache[key])
            self.insertintoLL(self.cache[key])
            return self.cache[key].val
        return -1
        

    def put(self, key: int, value: int) -> None:
        if key in self.cache:
            self.removeFromLL(self.cache[key])
        self.cache[key] = Node(key, value)
        self.insertintoLL(self.cache[key])

        if len(self.cache) > self.cap:
            lru = self.left.next
            self.removeFromLL(lru)
            del self.cache[lru.key]
        
