/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
    public bool HasCycle(ListNode head) {
        if (head == null) {
      return false;
    }
    List<ListNode> nums = [];
    while (head != null) {
      if (!nums.Contains(head)) {
        nums.Add(head);
        head = head.next;
      } else {
        return true;
      }
    }
    return false;
    }
}