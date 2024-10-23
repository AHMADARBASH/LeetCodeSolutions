/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
 ListNode? mergeKLists(List<ListNode?> lists) {
    if (lists.isEmpty) {
      return null;
    }
    List<int> nums = [];
    for (var head in lists) {
      while (head != null) {
        nums.add(head.val);
        head = head.next;
      }
    }
    if (nums.isEmpty) {
      return null;
    }
    nums.sort();
    ListNode? newH = ListNode(0, null);

    ListNode? temp = newH;
    for (int i = 0; i < nums.length; i++) {
      temp!.val = nums[i];
      if (i < nums.length - 1) {
        temp.next = ListNode(0, null);
      }
      temp = temp.next;
    }
    return newH;
  }
}