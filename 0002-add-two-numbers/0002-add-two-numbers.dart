/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    List<int> num1 = [];
    List<int> num2 = [];
    BigInt r1 = BigInt.from(0);
    BigInt r2 = BigInt.from(0);
    while (l1 != null) {
      num1.add(l1.val);
      l1 = l1.next;
    }
    while (l2 != null) {
      num2.add(l2.val);
      l2 = l2.next;
    }
    num1 = num1.reversed.toList();
    num2 = num2.reversed.toList();
    print(num1);
    print(num2);
    for (int i = 0; i < num1.length; i++) {
      r1 = r1 * BigInt.from(10);
      r1 += BigInt.from(num1[i]);
    }
    for (int i = 0; i < num2.length; i++) {
      r2 = r2 * BigInt.from(10);
      r2 += BigInt.from(num2[i]);
    }
    print(r1);
    print(r2);
    BigInt num3 = r1 + r2;
    print(num3);
    ListNode? l3 = ListNode(0, null);
    ListNode? head = l3;
    while (num3 >= BigInt.from(1)) {
      head!.val = (num3 % BigInt.from(10)).toInt();
      if (num3 > BigInt.from(9)) {
        head.next = ListNode(0, null);
      }
      head = head.next;
      num3 = num3 ~/ BigInt.from(10);
    }
    return l3;
  }
}
