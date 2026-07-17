class Solution:
    def anagramMappings(self, nums1: List[int], nums2: List[int]) -> List[int]:
        positionMap = {}
        # for index, num in enumerate(nums2):
        #     if num in positionMap.keys():
        #         positionMap[num].append(index)
        #     else:
        #         positionMap[num] = [index]
        
        # res = []
        
        # for num in nums1:
        #     if len(positionMap[num]) > 1:
        #         res.append(positionMap[num].pop())
        #     else:
        #         res.append(positionMap[num][0])
        
        # return res

        for index, num in enumerate(nums2):
            positionMap[num] = index
        
        res = []
        for num in nums1:
            res.append(positionMap[num])
        
        return res
        