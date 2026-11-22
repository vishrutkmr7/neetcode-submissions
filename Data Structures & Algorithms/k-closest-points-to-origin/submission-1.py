class Solution:
    def kClosest(self, points: List[List[int]], k: int) -> List[List[int]]:
        if len(points) < k:
            return points

        self.quickSortHelper(points, 0, len(points) - 1)

        return points[0:k]

    def euclideanDistance(self, point1, point2):
        x1 = point1[0]
        y1 = point1[1]
        x2 = point2[0]
        y2 = point2[1]
        return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2))

    def quickSortHelper(self, points, start, end):
        if end - start + 1 <= 1:
            return

        pivot = points[end]
        left = start

        for i in range(start, end):
            if self.euclideanDistance(points[i], [0, 0]) < self.euclideanDistance(pivot, [0, 0]):
                temp = points[left]
                points[left] = points[i]
                points[i] = temp
                left += 1

        points[end] = points[left]
        points[left] = pivot

        self.quickSortHelper(points, start, left - 1)
        self.quickSortHelper(points, left + 1, end)
