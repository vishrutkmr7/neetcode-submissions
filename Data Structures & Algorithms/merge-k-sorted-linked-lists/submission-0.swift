/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty { return nil }
        var lists = lists

        while lists.count > 1 {
            var mergedLists: [ListNode?] = []

            for i in stride(from: 0, to: lists.count, by: 2) {
                let l1 = lists[i]
                let l2 = i + 1 < lists.count ? lists[i + 1] : nil
                mergedLists.append(mergeTwoLists(l1, l2))
            }

            lists = mergedLists
        }

        return lists[0]
    }

    private func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var cur: ListNode? = dummy
        var l1 = list1
        var l2 = list2

        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                cur?.next = l1
                l1 = l1?.next
            } else {
                cur?.next = l2
                l2 = l2?.next
            }
            cur = cur?.next
        }

        cur?.next = l1 ?? l2
        return dummy.next
    }
}
