class Solution:
    def calPoints(self, operations: List[str]) -> int:
        score = []
        for operation in operations:
            if operation == "+":
                new_score = score[-1] + score [-2]
                score.append(new_score)
            elif operation == "C":
                score.pop()
            elif operation == "D":
                new_score = score[-1] * 2
                score.append(new_score)
            else:
                score.append(int(operation))
        
        return sum(score)


        