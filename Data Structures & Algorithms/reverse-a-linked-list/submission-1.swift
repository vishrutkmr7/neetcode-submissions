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
    func swap(_ prev: ListNode?, _ curr: ListNode?) -> ListNode? {
        guard let curr = curr else {
            return prev
        }

        let next = curr.next
        curr.next = prev

        return swap(curr, next)
    }

    func reverseList(_ head: ListNode?) -> ListNode? {
        return swap(nil, head)
    }
}
