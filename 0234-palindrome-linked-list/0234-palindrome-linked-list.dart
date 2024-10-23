/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
     bool isPal(List<int> nums) {
    int i = 0;
    int j = nums.length - 1;
    while (i < j) {
      if (nums[i] != nums[j]) {
        return false;
      }
      i++;
      j--;
    }
    return true;
  }
  bool isPalindrome(ListNode? head) {
    List<int> nums = [];
    while (head != null) {
      nums.add(head.val);
      head = head.next;
    }

    return isPal(nums);
  }
}