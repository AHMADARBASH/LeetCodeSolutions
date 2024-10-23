/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    if(head == null){
        return head;
    }
    List<int> nums = [];
    ListNode? newH = ListNode(0, null);
    while (head != null) {
      nums.add(head.val);
      head = head.next;
    }
    ListNode? temp = newH;
    for (int i = nums.length - 1; i >= 0; i--) {
      temp!.val = nums[i];
      if (i > 0) {
        temp.next = ListNode(0, null);
      }
      temp = temp.next;
    }
    return newH;
  }
}