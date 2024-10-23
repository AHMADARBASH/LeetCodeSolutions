/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  int getDecimalValue(ListNode? head) {
    List<int> nums = [];
    while (head != null) {
      nums.add(head.val);
      head = head.next;
    }
    BigInt res = BigInt.from(0);
    for (int i = 0; i < nums.length; i++) {
      res = res * BigInt.from(10);
      res = res + BigInt.from(nums[i]);
    }
    String s = res.toString();
    return int.parse(s,radix: 2);
  }
}