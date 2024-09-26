/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
   ListNode? deleteDuplicates(ListNode? head) {
    ListNode? tail = head;
    while (tail != null && tail.next != null) {
      if (tail.val == tail.next!.val) {
        tail.next = tail.next!.next;
      } else {
        tail = tail.next!;
      }
    
    }  return head;
  }
}