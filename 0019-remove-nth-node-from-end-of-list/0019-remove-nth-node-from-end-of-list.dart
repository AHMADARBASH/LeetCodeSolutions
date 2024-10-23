/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    List<int> nums = [];
    ListNode? newH = ListNode(0, null);
    while (head != null) {
      nums.add(head.val);
      head = head.next;
    }if (nums.length == 1) {
      return null;
    }
    ListNode? temp = newH;
    nums = nums.reversed.toList();
    nums.removeAt(n - 1);
    nums = nums.reversed.toList();
    for (int i = 0; i < nums.length; i++) {
      temp!.val = nums[i];
      if (i < nums.length-1) {
        temp.next = ListNode(0, null);
      }
      temp = temp.next;
    }
    return newH;
  }
}