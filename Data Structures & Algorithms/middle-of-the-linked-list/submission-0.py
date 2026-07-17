# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        slowNode = head
        fastNode = head

        while (fastNode is not None) and (fastNode.next is not None):
            slowNode = slowNode.next
            fastNode = fastNode.next.next
        
        return slowNode