# Definition for a pair.
# class Pair:
#     def __init__(self, key: int, value: str):
#         self.key = key
#         self.value = value
class Solution:
    def mergeSort(self, pairs: List[Pair]) -> List[Pair]:
        if len(pairs) == 0:
            return []

        self.mergeSortHelper(pairs, 0, len(pairs) - 1)
        return pairs

    def mergeSortHelper(self, pairs: List[Pair], start: int, end: int) -> List[Pair]:
        if end - start + 1 <= 1:
            return pairs

        mid = (start + end) // 2
        self.mergeSortHelper(pairs, start, mid)
        self.mergeSortHelper(pairs, mid + 1, end)

        self.merge(pairs, start, mid, end)
        return pairs

    def merge(self, pairs: List[Pair], start: int, mid: int, end: int):
        temp = []

        left = start
        right = mid + 1

        while left <= mid and right <= end:
            if pairs[left].key <= pairs[right].key:
                temp.append(pairs[left])
                left += 1
            else:
                temp.append(pairs[right])
                right += 1

        while left <= mid:
            temp.append(pairs[left])
            left += 1

        while right <= end:
            temp.append(pairs[right])
            right += 1

        for i in range(0, len(temp)):
            pairs[start + i] = temp[i]
