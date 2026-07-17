class Solution:
    def findLonelyPixel(self, picture: List[List[str]]) -> int:
        row = len(picture)
        col = len(picture[0])

        rowCount = [0] * row
        colCount = [0] * col

        for i in range(row):
            for j in range(col):
                if picture[i][j] == "B":
                    rowCount[i] += 1
                    colCount[j] += 1

        res = 0
        for i in range(row):
            for j in range(col):
                if picture[i][j] == "B" and rowCount[i] == 1 and colCount[j] == 1:
                    res += 1

        return res            
        