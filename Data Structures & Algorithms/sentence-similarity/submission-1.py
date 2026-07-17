class Solution:
    def areSentencesSimilar(self, sentence1: List[str], sentence2: List[str], similarPairs: List[List[str]]) -> bool:
        if len(sentence1) != len(sentence2):
            return False

        similaritySet = set()
        for pair in similarPairs:
            similaritySet.add(tuple(pair))

        for i in range(len(sentence1)):
            w1, w2 = sentence1[i], sentence2[i]
            if w1 == w2:
                continue
            if (w1, w2) not in similaritySet and (w2, w1) not in similaritySet:
                return False
        
        return True