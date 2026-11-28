class Solution:
    def shortestPathBinaryMatrix(self, grid: List[List[int]]) -> int:
        size = len(grid) # or col
        if grid[0][0] or grid[size - 1][size - 1]:
            return -1

        queue = deque([(0, 0, 1)])
        visit = set((0, 0))
        directions = [(0, 1), (1, 0), (0, -1), (-1, 0), (1, 1), (-1, -1), (1, -1), (-1, 1)]

        while queue:
            row, col, length = queue.popleft()
            if row == size - 1 and col == size - 1:
                return length
            
            for dr, dc in directions:
                newRow, newCol = row + dr, col + dc
                if (0 <= newRow < size and 0 <= newCol < size and grid[newRow][newCol] == 0) and (newRow, newCol) not in visit:
                    queue.append((newRow, newCol, length + 1))
                    visit.add((newRow, newCol))
        
        return -1
        