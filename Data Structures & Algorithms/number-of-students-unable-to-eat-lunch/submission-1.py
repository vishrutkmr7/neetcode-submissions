class Solution:
    def countStudents(self, students: List[int], sandwiches: List[int]) -> int:
        counts = {
            0: 0,
            1: 0
        }

        for s in students:
            counts[s] += 1

        for sandwich in sandwiches:
            if counts[sandwich] == 0:
                return counts[0] + counts[1]
            counts[sandwich] -= 1
        return 0
        